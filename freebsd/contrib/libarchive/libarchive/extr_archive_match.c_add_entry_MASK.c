#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct match_file {int flag; int /*<<< orphan*/  pathname; int /*<<< orphan*/  ctime_nsec; int /*<<< orphan*/  ctime_sec; int /*<<< orphan*/  mtime_nsec; int /*<<< orphan*/  mtime_sec; int /*<<< orphan*/  node; } ;
struct TYPE_3__ {int /*<<< orphan*/ * rbt_ops; } ;
struct archive_match {int /*<<< orphan*/  setflag; int /*<<< orphan*/  exclusion_entry_list; TYPE_1__ exclusion_tree; int /*<<< orphan*/  archive; } ;
struct archive_entry {int dummy; } ;

/* Variables and functions */
 int ARCHIVE_FAILED ; 
 int ARCHIVE_OK ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  TIME_IS_SET ; 
 scalar_t__ FUNC0 (TYPE_1__*,void const*) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC4 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct archive_entry*) ; 
 void* FUNC6 (struct archive_entry*) ; 
 void* FUNC7 (struct archive_entry*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,void const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,void const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 struct match_file* FUNC12 (int,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,struct match_file*) ; 
 int FUNC14 (struct archive_match*) ; 
 int /*<<< orphan*/  FUNC15 (struct match_file*) ; 
 int /*<<< orphan*/  rb_ops_mbs ; 
 int /*<<< orphan*/  rb_ops_wcs ; 

__attribute__((used)) static int
FUNC16(struct archive_match *a, int flag,
    struct archive_entry *entry)
{
	struct match_file *f;
	const void *pathname;
	int r;

	f = FUNC12(1, sizeof(*f));
	if (f == NULL)
		return (FUNC14(a));

#if defined(_WIN32) && !defined(__CYGWIN__)
	pathname = archive_entry_pathname_w(entry);
	if (pathname == NULL) {
		free(f);
		archive_set_error(&(a->archive), EINVAL, "pathname is NULL");
		return (ARCHIVE_FAILED);
	}
	archive_mstring_copy_wcs(&(f->pathname), pathname);
	a->exclusion_tree.rbt_ops = &rb_ops_wcs;
#else
	(void)rb_ops_wcs;
	pathname = FUNC6(entry);
	if (pathname == NULL) {
		FUNC15(f);
		FUNC11(&(a->archive), EINVAL, "pathname is NULL");
		return (ARCHIVE_FAILED);
	}
	FUNC9(&(f->pathname), pathname);
	a->exclusion_tree.rbt_ops = &rb_ops_mbs;
#endif
	f->flag = flag;
	f->mtime_sec = FUNC4(entry);
	f->mtime_nsec = FUNC5(entry);
	f->ctime_sec = FUNC2(entry);
	f->ctime_nsec = FUNC3(entry);
	r = FUNC1(&(a->exclusion_tree), &(f->node));
	if (!r) {
		struct match_file *f2;

		/* Get the duplicated file. */
		f2 = (struct match_file *)FUNC0(
			&(a->exclusion_tree), pathname);

		/*
		 * We always overwrite comparison condition.
		 * If you do not want to overwrite it, you should not
		 * call archive_match_exclude_entry(). We cannot know
		 * what behavior you really expect since overwriting
		 * condition might be different with the flag.
		 */
		if (f2 != NULL) {
			f2->flag = f->flag;
			f2->mtime_sec = f->mtime_sec;
			f2->mtime_nsec = f->mtime_nsec;
			f2->ctime_sec = f->ctime_sec;
			f2->ctime_nsec = f->ctime_nsec;
		}
		/* Release the duplicated file. */
		FUNC8(&(f->pathname));
		FUNC15(f);
		return (ARCHIVE_OK);
	}
	FUNC13(&(a->exclusion_entry_list), f);
	a->setflag |= TIME_IS_SET;
	return (ARCHIVE_OK);
}