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
struct fs {struct csum* fs_csp; void* fs_sblockactualloc; } ;
struct csum {int dummy; } ;
typedef  void* off_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fs*,int) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int*,struct fs*,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct fs*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  use_pwrite ; 

int
FUNC4(int devfd, struct fs *fs, int numaltwrite)
{
	struct csum *savedcsp;
	off_t savedactualloc;
	int i, error;

	if ((error = FUNC2(&devfd, fs, fs->fs_sblockactualloc,
	     use_pwrite)) != 0)
		return (error);
	if (numaltwrite == 0)
		return (0);
	savedactualloc = fs->fs_sblockactualloc;
	savedcsp = fs->fs_csp;
	fs->fs_csp = NULL;
	for (i = 0; i < numaltwrite; i++) {
		fs->fs_sblockactualloc = FUNC1(FUNC3(fs, FUNC0(fs, i)));
		if ((error = FUNC2(&devfd, fs, fs->fs_sblockactualloc,
		     use_pwrite)) != 0) {
			fs->fs_sblockactualloc = savedactualloc;
			fs->fs_csp = savedcsp;
			return (-1);
		}
	}
	fs->fs_sblockactualloc = savedactualloc;
	fs->fs_csp = savedcsp;
	return (0);
}