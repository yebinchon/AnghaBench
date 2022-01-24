#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uintmax_t ;
struct archive_string {int length; int /*<<< orphan*/  s; } ;
struct TYPE_8__ {int keys; scalar_t__ processing; } ;
struct mtree_writer {struct archive_string buf; scalar_t__ classic; scalar_t__ indent; TYPE_3__ set; struct archive_string ebuf; scalar_t__ output_global_set; int /*<<< orphan*/  dironly; } ;
struct TYPE_9__ {unsigned int s; } ;
struct TYPE_10__ {unsigned int s; } ;
struct TYPE_7__ {unsigned int s; } ;
struct TYPE_6__ {unsigned int s; } ;
struct mtree_entry {int nlink; int filetype; int /*<<< orphan*/  reg_info; scalar_t__ size; scalar_t__ rdevminor; scalar_t__ rdevmajor; TYPE_4__ symlink; scalar_t__ devminor; scalar_t__ devmajor; scalar_t__ ino; scalar_t__ uid; scalar_t__ gid; scalar_t__ mode; scalar_t__ mtime_nsec; scalar_t__ mtime; TYPE_5__ fflags_text; TYPE_5__ uname; TYPE_5__ gname; TYPE_2__ basename; TYPE_1__ parentdir; scalar_t__ dir_info; } ;
struct archive_write {struct mtree_writer* format_data; } ;
typedef  unsigned int intmax_t ;

/* Variables and functions */
#define  AE_IFBLK 134 
#define  AE_IFCHR 133 
#define  AE_IFDIR 132 
#define  AE_IFIFO 131 
#define  AE_IFLNK 130 
#define  AE_IFREG 129 
#define  AE_IFSOCK 128 
 int ARCHIVE_OK ; 
 int F_DEV ; 
 int F_FLAGS ; 
 int F_GID ; 
 int F_GNAME ; 
 int F_INO ; 
 int F_MODE ; 
 int F_NLINK ; 
 int F_RESDEV ; 
 int F_SIZE ; 
 int F_SLINK ; 
 int F_TIME ; 
 int F_TYPE ; 
 int F_UID ; 
 int F_UNAME ; 
 int FUNC0 (struct archive_write*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct archive_string*,char) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_string*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_string*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_string*,char*,unsigned int,...) ; 
 scalar_t__ FUNC5 (TYPE_5__*) ; 
 int FUNC6 (struct mtree_writer*,struct mtree_entry*) ; 
 int /*<<< orphan*/  FUNC7 (struct mtree_writer*) ; 
 int /*<<< orphan*/  FUNC8 (struct archive_string*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (struct archive_string*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct mtree_writer*) ; 

__attribute__((used)) static int
FUNC11(struct archive_write *a, struct mtree_entry *me)
{
	struct mtree_writer *mtree = a->format_data;
	struct archive_string *str;
	int keys, ret;

	if (me->dir_info) {
		if (mtree->classic) {
			/*
			 * Output a comment line to describe the full
			 * pathname of the entry as mtree utility does
			 * while generating classic format.
			 */
			if (!mtree->dironly)
				FUNC1(&mtree->buf, '\n');
			if (me->parentdir.s)
				FUNC4(&mtree->buf,
				    "# %s/%s\n",
				    me->parentdir.s, me->basename.s);
			else
				FUNC4(&mtree->buf,
				    "# %s\n",
				    me->basename.s);
		}
		if (mtree->output_global_set)
			FUNC10(mtree);
	}
	FUNC3(&mtree->ebuf);
	str = (mtree->indent || mtree->classic)? &mtree->ebuf : &mtree->buf;

	if (!mtree->classic && me->parentdir.s) {
		/*
		 * If generating format is not classic one(v1), output
		 * a full pathname.
		 */
		FUNC8(str, me->parentdir.s);
		FUNC1(str, '/');
	}
	FUNC8(str, me->basename.s);

	keys = FUNC6(mtree, me);
	if ((keys & F_NLINK) != 0 &&
	    me->nlink != 1 && me->filetype != AE_IFDIR)
		FUNC4(str, " nlink=%u", me->nlink);

	if ((keys & F_GNAME) != 0 && FUNC5(&me->gname) > 0) {
		FUNC2(str, " gname=");
		FUNC8(str, me->gname.s);
	}
	if ((keys & F_UNAME) != 0 && FUNC5(&me->uname) > 0) {
		FUNC2(str, " uname=");
		FUNC8(str, me->uname.s);
	}
	if ((keys & F_FLAGS) != 0) {
		if (FUNC5(&me->fflags_text) > 0) {
			FUNC2(str, " flags=");
			FUNC8(str, me->fflags_text.s);
		} else if (mtree->set.processing &&
		    (mtree->set.keys & F_FLAGS) != 0)
			/* Overwrite the global parameter. */
			FUNC2(str, " flags=none");
	}
	if ((keys & F_TIME) != 0)
		FUNC4(str, " time=%jd.%jd",
		    (intmax_t)me->mtime, (intmax_t)me->mtime_nsec);
	if ((keys & F_MODE) != 0)
		FUNC4(str, " mode=%o", (unsigned int)me->mode);
	if ((keys & F_GID) != 0)
		FUNC4(str, " gid=%jd", (intmax_t)me->gid);
	if ((keys & F_UID) != 0)
		FUNC4(str, " uid=%jd", (intmax_t)me->uid);

	if ((keys & F_INO) != 0)
		FUNC4(str, " inode=%jd", (intmax_t)me->ino);
	if ((keys & F_RESDEV) != 0) {
		FUNC4(str,
		    " resdevice=native,%ju,%ju",
		    (uintmax_t)me->devmajor,
		    (uintmax_t)me->devminor);
	}

	switch (me->filetype) {
	case AE_IFLNK:
		if ((keys & F_TYPE) != 0)
			FUNC2(str, " type=link");
		if ((keys & F_SLINK) != 0) {
			FUNC2(str, " link=");
			FUNC8(str, me->symlink.s);
		}
		break;
	case AE_IFSOCK:
		if ((keys & F_TYPE) != 0)
			FUNC2(str, " type=socket");
		break;
	case AE_IFCHR:
		if ((keys & F_TYPE) != 0)
			FUNC2(str, " type=char");
		if ((keys & F_DEV) != 0) {
			FUNC4(str,
			    " device=native,%ju,%ju",
			    (uintmax_t)me->rdevmajor,
			    (uintmax_t)me->rdevminor);
		}
		break;
	case AE_IFBLK:
		if ((keys & F_TYPE) != 0)
			FUNC2(str, " type=block");
		if ((keys & F_DEV) != 0) {
			FUNC4(str,
			    " device=native,%ju,%ju",
			    (uintmax_t)me->rdevmajor,
			    (uintmax_t)me->rdevminor);
		}
		break;
	case AE_IFDIR:
		if ((keys & F_TYPE) != 0)
			FUNC2(str, " type=dir");
		break;
	case AE_IFIFO:
		if ((keys & F_TYPE) != 0)
			FUNC2(str, " type=fifo");
		break;
	case AE_IFREG:
	default:	/* Handle unknown file types as regular files. */
		if ((keys & F_TYPE) != 0)
			FUNC2(str, " type=file");
		if ((keys & F_SIZE) != 0)
			FUNC4(str, " size=%jd",
			    (intmax_t)me->size);
		break;
	}

	/* Write a bunch of sum. */
	if (me->reg_info)
		FUNC9(str, me->reg_info);

	FUNC1(str, '\n');
	if (mtree->indent || mtree->classic)
		FUNC7(mtree);

	if (mtree->buf.length > 32768) {
		ret = FUNC0(
			a, mtree->buf.s, mtree->buf.length);
		FUNC3(&mtree->buf);
	} else
		ret = ARCHIVE_OK;
	return (ret);
}