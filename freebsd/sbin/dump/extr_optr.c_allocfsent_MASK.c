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
struct fstab {int /*<<< orphan*/  fs_freq; int /*<<< orphan*/  fs_passno; int /*<<< orphan*/ * fs_spec; int /*<<< orphan*/ * fs_type; int /*<<< orphan*/ * fs_file; } ;

/* Variables and functions */
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

struct fstab *
FUNC4(const struct fstab *fs)
{
	struct fstab *new;

	new = (struct fstab *)FUNC0(sizeof (*fs));
	if (new == NULL ||
	    (new->fs_file = FUNC2(fs->fs_file)) == NULL ||
	    (new->fs_type = FUNC2(fs->fs_type)) == NULL ||
	    (new->fs_spec = FUNC2(fs->fs_spec)) == NULL)
		FUNC1("%s\n", FUNC3(errno));
	new->fs_passno = fs->fs_passno;
	new->fs_freq = fs->fs_freq;
	return (new);
}