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
struct filestat {int fs_fflags; int fs_uflags; int fs_fd; int fs_type; int fs_ref_count; char* fs_path; int /*<<< orphan*/  fs_cap_rights; int /*<<< orphan*/  fs_offset; void* fs_typedep; } ;
typedef  int /*<<< orphan*/  off_t ;
typedef  int /*<<< orphan*/  cap_rights_t ;

/* Variables and functions */
 struct filestat* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static struct filestat *
FUNC3(void *typedep, int type, int fd, int fflags, int uflags,
    int refcount, off_t offset, char *path, cap_rights_t *cap_rightsp)
{
	struct filestat *entry;

	entry = FUNC0(1, sizeof(*entry));
	if (entry == NULL) {
		FUNC2("malloc()");
		return (NULL);
	}
	entry->fs_typedep = typedep;
	entry->fs_fflags = fflags;
	entry->fs_uflags = uflags;
	entry->fs_fd = fd;
	entry->fs_type = type;
	entry->fs_ref_count = refcount;
	entry->fs_offset = offset;
	entry->fs_path = path;
	if (cap_rightsp != NULL)
		entry->fs_cap_rights = *cap_rightsp;
	else
		FUNC1(&entry->fs_cap_rights);
	return (entry);
}