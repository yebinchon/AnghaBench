#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct stat {int st_size; int /*<<< orphan*/  st_mode; } ;
struct mparse {scalar_t__ gzip; } ;
struct buf {size_t sz; scalar_t__ buf; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/ * gzFile ;

/* Variables and functions */
 int /*<<< orphan*/  MANDOCERR_DUP ; 
 int /*<<< orphan*/  MANDOCERR_FSTAT ; 
 int /*<<< orphan*/  MANDOCERR_GZCLOSE ; 
 int /*<<< orphan*/  MANDOCERR_GZDOPEN ; 
 int /*<<< orphan*/  MANDOCERR_READ ; 
 int /*<<< orphan*/  MANDOCERR_TOOLARGE ; 
 scalar_t__ MAP_FAILED ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int /*<<< orphan*/  PROT_READ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int Z_ERRNO ; 
 int Z_OK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int,struct stat*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC11 (int,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC12 (struct buf*,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 

__attribute__((used)) static int
FUNC15(struct mparse *curp, int fd, struct buf *fb, int *with_mmap)
{
	struct stat	 st;
	gzFile		 gz;
	size_t		 off;
	ssize_t		 ssz;
	int		 gzerrnum, retval;

	if (FUNC4(fd, &st) == -1) {
		FUNC9(MANDOCERR_FSTAT, 0, 0, "%s", FUNC13(errno));
		return -1;
	}

	/*
	 * If we're a regular file, try just reading in the whole entry
	 * via mmap().  This is faster than reading it into blocks, and
	 * since each file is only a few bytes to begin with, I'm not
	 * concerned that this is going to tank any machines.
	 */

	if (curp->gzip == 0 && FUNC0(st.st_mode)) {
		if (st.st_size > 0x7fffffff) {
			FUNC9(MANDOCERR_TOOLARGE, 0, 0, NULL);
			return -1;
		}
		*with_mmap = 1;
		fb->sz = (size_t)st.st_size;
		fb->buf = FUNC10(NULL, fb->sz, PROT_READ, MAP_SHARED, fd, 0);
		if (fb->buf != MAP_FAILED)
			return 0;
	}

	if (curp->gzip) {
		/*
		 * Duplicating the file descriptor is required
		 * because we will have to call gzclose(3)
		 * to free memory used internally by zlib,
		 * but that will also close the file descriptor,
		 * which this function must not do.
		 */
		if ((fd = FUNC2(fd)) == -1) {
			FUNC9(MANDOCERR_DUP, 0, 0,
			    "%s", FUNC13(errno));
			return -1;
		}
		if ((gz = FUNC6(fd, "rb")) == NULL) {
			FUNC9(MANDOCERR_GZDOPEN, 0, 0,
			    "%s", FUNC13(errno));
			FUNC1(fd);
			return -1;
		}
	} else
		gz = NULL;

	/*
	 * If this isn't a regular file (like, say, stdin), then we must
	 * go the old way and just read things in bit by bit.
	 */

	*with_mmap = 0;
	off = 0;
	retval = -1;
	fb->sz = 0;
	fb->buf = NULL;
	for (;;) {
		if (off == fb->sz) {
			if (fb->sz == (1U << 31)) {
				FUNC9(MANDOCERR_TOOLARGE, 0, 0, NULL);
				break;
			}
			FUNC12(fb, 65536);
		}
		ssz = curp->gzip ?
		    FUNC8(gz, fb->buf + (int)off, fb->sz - off) :
		    FUNC11(fd, fb->buf + (int)off, fb->sz - off);
		if (ssz == 0) {
			fb->sz = off;
			retval = 0;
			break;
		}
		if (ssz == -1) {
			if (curp->gzip)
				(void)FUNC7(gz, &gzerrnum);
			FUNC9(MANDOCERR_READ, 0, 0, "%s",
			    curp->gzip && gzerrnum != Z_ERRNO ?
			    FUNC14(gzerrnum) : FUNC13(errno));
			break;
		}
		off += (size_t)ssz;
	}

	if (curp->gzip && (gzerrnum = FUNC5(gz)) != Z_OK)
		FUNC9(MANDOCERR_GZCLOSE, 0, 0, "%s",
		    gzerrnum == Z_ERRNO ? FUNC13(errno) :
		    FUNC14(gzerrnum));
	if (retval == -1) {
		FUNC3(fb->buf);
		fb->buf = NULL;
	}
	return retval;
}