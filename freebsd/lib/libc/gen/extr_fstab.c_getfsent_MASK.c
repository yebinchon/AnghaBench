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
struct fstab {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  _fs_fp ; 
 struct fstab _fs_fstab ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 

struct fstab *
FUNC2(void)
{

	if ((!_fs_fp && !FUNC1()) || !FUNC0())
		return (NULL);
	return (&_fs_fstab);
}