#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct stat {int st_blksize; scalar_t__ st_size; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  pgno_t ;
typedef  int /*<<< orphan*/  indx_t ;
struct TYPE_16__ {scalar_t__ magic; int version; int psize; int free; int nrecs; int flags; } ;
struct TYPE_15__ {int flags; int psize; int minkeypage; int lorder; int cachesize; int /*<<< orphan*/ * prefix; int /*<<< orphan*/ * compare; } ;
struct TYPE_14__ {int bt_fd; int bt_lorder; int bt_rfd; int bt_free; int bt_nrecs; int bt_psize; scalar_t__ bt_ovflsize; struct TYPE_14__* bt_dbp; int /*<<< orphan*/ * bt_mp; int /*<<< orphan*/  sync; int /*<<< orphan*/  seq; int /*<<< orphan*/  put; int /*<<< orphan*/  get; int /*<<< orphan*/  fd; int /*<<< orphan*/  del; int /*<<< orphan*/  close; struct TYPE_14__* internal; int /*<<< orphan*/  type; int /*<<< orphan*/ * bt_pfx; int /*<<< orphan*/ * bt_cmp; int /*<<< orphan*/  bt_order; } ;
typedef  TYPE_1__ DB ;
typedef  TYPE_2__ BTREEINFO ;
typedef  TYPE_1__ BTREE ;
typedef  TYPE_4__ BTMETA ;

/* Variables and functions */
 int BIG_ENDIAN ; 
 int BTDATAOFF ; 
 scalar_t__ BTREEMAGIC ; 
 scalar_t__ BTREEVERSION ; 
 int B_DB_LOCK ; 
 int B_DB_SHMEM ; 
 int B_DB_TXN ; 
 int B_INMEM ; 
 int B_METADIRTY ; 
 int B_NEEDSWAP ; 
 int B_NODUPS ; 
 int B_RDONLY ; 
 int /*<<< orphan*/  DB_BTREE ; 
 int DB_LOCK ; 
 int DB_SHMEM ; 
 int DB_TXN ; 
 void* DEFMINKEYPAGE ; 
 int EFTYPE ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int LITTLE_ENDIAN ; 
 int MAX_PAGE_OFFSET ; 
 int MINCACHE ; 
 int MINPSIZE ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NOT ; 
 int /*<<< orphan*/  NOVFLSIZE ; 
 int O_ACCMODE ; 
 int O_CLOEXEC ; 
#define  O_RDONLY 130 
#define  O_RDWR 129 
#define  O_WRONLY 128 
 int P_INVALID ; 
 scalar_t__ RET_ERROR ; 
 int R_DUP ; 
 int SAVEMETA ; 
 int /*<<< orphan*/  __bt_close ; 
 void* __bt_defcmp ; 
 void* __bt_defpfx ; 
 int /*<<< orphan*/  __bt_delete ; 
 int /*<<< orphan*/  __bt_fd ; 
 int /*<<< orphan*/  __bt_get ; 
 int /*<<< orphan*/  __bt_pgin ; 
 int /*<<< orphan*/  __bt_pgout ; 
 int /*<<< orphan*/  __bt_put ; 
 int /*<<< orphan*/  __bt_seq ; 
 int /*<<< orphan*/  __bt_sync ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (int,struct stat*) ; 
 int FUNC7 (char const*,int,int) ; 
 int FUNC8 (int,TYPE_4__*,int) ; 
 int FUNC9 () ; 
 scalar_t__ FUNC10 (int,int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (TYPE_1__*) ; 
 int FUNC16 () ; 

DB *
FUNC17(const char *fname, int flags, int mode, const BTREEINFO *openinfo, int dflags)
{
	struct stat sb;
	BTMETA m;
	BTREE *t;
	BTREEINFO b;
	DB *dbp;
	pgno_t ncache;
	ssize_t nr;
	int machine_lorder, saved_errno;

	t = NULL;

	/*
	 * Intention is to make sure all of the user's selections are okay
	 * here and then use them without checking.  Can't be complete, since
	 * we don't know the right page size, lorder or flags until the backing
	 * file is opened.  Also, the file's page size can cause the cachesize
	 * to change.
	 */
	machine_lorder = FUNC9();
	if (openinfo) {
		b = *openinfo;

		/* Flags: R_DUP. */
		if (b.flags & ~(R_DUP))
			goto einval;

		/*
		 * Page size must be indx_t aligned and >= MINPSIZE.  Default
		 * page size is set farther on, based on the underlying file
		 * transfer size.
		 */
		if (b.psize &&
		    (b.psize < MINPSIZE || b.psize > MAX_PAGE_OFFSET + 1 ||
		    b.psize & (sizeof(indx_t) - 1) ))
			goto einval;

		/* Minimum number of keys per page; absolute minimum is 2. */
		if (b.minkeypage) {
			if (b.minkeypage < 2)
				goto einval;
		} else
			b.minkeypage = DEFMINKEYPAGE;

		/* If no comparison, use default comparison and prefix. */
		if (b.compare == NULL) {
			b.compare = __bt_defcmp;
			if (b.prefix == NULL)
				b.prefix = __bt_defpfx;
		}

		if (b.lorder == 0)
			b.lorder = machine_lorder;
	} else {
		b.compare = __bt_defcmp;
		b.cachesize = 0;
		b.flags = 0;
		b.lorder = machine_lorder;
		b.minkeypage = DEFMINKEYPAGE;
		b.prefix = __bt_defpfx;
		b.psize = 0;
	}

	/* Check for the ubiquitous PDP-11. */
	if (b.lorder != BIG_ENDIAN && b.lorder != LITTLE_ENDIAN)
		goto einval;

	/* Allocate and initialize DB and BTREE structures. */
	if ((t = (BTREE *)FUNC10(1, sizeof(BTREE))) == NULL)
		goto err;
	t->bt_fd = -1;			/* Don't close unopened fd on error. */
	t->bt_lorder = b.lorder;
	t->bt_order = NOT;
	t->bt_cmp = b.compare;
	t->bt_pfx = b.prefix;
	t->bt_rfd = -1;

	if ((t->bt_dbp = dbp = (DB *)FUNC10(1, sizeof(DB))) == NULL)
		goto err;
	if (t->bt_lorder != machine_lorder)
		FUNC2(t, B_NEEDSWAP);

	dbp->type = DB_BTREE;
	dbp->internal = t;
	dbp->close = __bt_close;
	dbp->del = __bt_delete;
	dbp->fd = __bt_fd;
	dbp->get = __bt_get;
	dbp->put = __bt_put;
	dbp->seq = __bt_seq;
	dbp->sync = __bt_sync;

	/*
	 * If no file name was supplied, this is an in-memory btree and we
	 * open a backing temporary file.  Otherwise, it's a disk-based tree.
	 */
	if (fname) {
		switch (flags & O_ACCMODE) {
		case O_RDONLY:
			FUNC2(t, B_RDONLY);
			break;
		case O_RDWR:
			break;
		case O_WRONLY:
		default:
			goto einval;
		}

		if ((t->bt_fd = FUNC7(fname, flags | O_CLOEXEC, mode)) < 0)
			goto err;

	} else {
		if ((flags & O_ACCMODE) != O_RDWR)
			goto einval;
		if ((t->bt_fd = FUNC16()) == -1)
			goto err;
		FUNC2(t, B_INMEM);
	}

	if (FUNC6(t->bt_fd, &sb))
		goto err;
	if (sb.st_size) {
		if ((nr = FUNC8(t->bt_fd, &m, sizeof(BTMETA))) < 0)
			goto err;
		if (nr != sizeof(BTMETA))
			goto eftype;

		/*
		 * Read in the meta-data.  This can change the notion of what
		 * the lorder, page size and flags are, and, when the page size
		 * changes, the cachesize value can change too.  If the user
		 * specified the wrong byte order for an existing database, we
		 * don't bother to return an error, we just clear the NEEDSWAP
		 * bit.
		 */
		if (m.magic == BTREEMAGIC)
			FUNC0(t, B_NEEDSWAP);
		else {
			FUNC2(t, B_NEEDSWAP);
			FUNC3(m.magic);
			FUNC3(m.version);
			FUNC3(m.psize);
			FUNC3(m.free);
			FUNC3(m.nrecs);
			FUNC3(m.flags);
		}
		if (m.magic != BTREEMAGIC || m.version != BTREEVERSION)
			goto eftype;
		if (m.psize < MINPSIZE || m.psize > MAX_PAGE_OFFSET + 1 ||
		    m.psize & (sizeof(indx_t) - 1) )
			goto eftype;
		if (m.flags & ~SAVEMETA)
			goto eftype;
		b.psize = m.psize;
		FUNC2(t, m.flags);
		t->bt_free = m.free;
		t->bt_nrecs = m.nrecs;
	} else {
		/*
		 * Set the page size to the best value for I/O to this file.
		 * Don't overflow the page offset type.
		 */
		if (b.psize == 0) {
			b.psize = sb.st_blksize;
			if (b.psize < MINPSIZE)
				b.psize = MINPSIZE;
			if (b.psize > MAX_PAGE_OFFSET + 1)
				b.psize = MAX_PAGE_OFFSET + 1;
		}

		/* Set flag if duplicates permitted. */
		if (!(b.flags & R_DUP))
			FUNC2(t, B_NODUPS);

		t->bt_free = P_INVALID;
		t->bt_nrecs = 0;
		FUNC2(t, B_METADIRTY);
	}

	t->bt_psize = b.psize;

	/* Set the cache size; must be a multiple of the page size. */
	if (b.cachesize && b.cachesize & (b.psize - 1) )
		b.cachesize += (~b.cachesize & (b.psize - 1) ) + 1;
	if (b.cachesize < b.psize * MINCACHE)
		b.cachesize = b.psize * MINCACHE;

	/* Calculate number of pages to cache. */
	ncache = FUNC12(b.cachesize, t->bt_psize);

	/*
	 * The btree data structure requires that at least two keys can fit on
	 * a page, but other than that there's no fixed requirement.  The user
	 * specified a minimum number per page, and we translated that into the
	 * number of bytes a key/data pair can use before being placed on an
	 * overflow page.  This calculation includes the page header, the size
	 * of the index referencing the leaf item and the size of the leaf item
	 * structure.  Also, don't let the user specify a minkeypage such that
	 * a key/data pair won't fit even if both key and data are on overflow
	 * pages.
	 */
	t->bt_ovflsize = (t->bt_psize - BTDATAOFF) / b.minkeypage -
	    (sizeof(indx_t) + FUNC4(0, 0));
	if (t->bt_ovflsize < FUNC4(NOVFLSIZE, NOVFLSIZE) + sizeof(indx_t))
		t->bt_ovflsize =
		    FUNC4(NOVFLSIZE, NOVFLSIZE) + sizeof(indx_t);

	/* Initialize the buffer pool. */
	if ((t->bt_mp =
	    FUNC14(NULL, t->bt_fd, t->bt_psize, ncache)) == NULL)
		goto err;
	if (!FUNC1(t, B_INMEM))
		FUNC13(t->bt_mp, __bt_pgin, __bt_pgout, t);

	/* Create a root page if new tree. */
	if (FUNC15(t) == RET_ERROR)
		goto err;

	/* Global flags. */
	if (dflags & DB_LOCK)
		FUNC2(t, B_DB_LOCK);
	if (dflags & DB_SHMEM)
		FUNC2(t, B_DB_SHMEM);
	if (dflags & DB_TXN)
		FUNC2(t, B_DB_TXN);

	return (dbp);

einval:	errno = EINVAL;
	goto err;

eftype:	errno = EFTYPE;
	goto err;

err:	saved_errno = errno;
	if (t) {
		if (t->bt_dbp)
			FUNC11(t->bt_dbp);
		if (t->bt_fd != -1)
			(void)FUNC5(t->bt_fd);
		FUNC11(t);
	}
	errno = saved_errno;
	return (NULL);
}