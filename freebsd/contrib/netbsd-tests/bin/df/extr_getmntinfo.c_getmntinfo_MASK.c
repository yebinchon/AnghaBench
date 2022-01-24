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
struct statvfs {int dummy; } ;

/* Variables and functions */
 struct statvfs* allstatvfs ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int sfused ; 

int
FUNC4(struct statvfs **mntbuf, int flags)
{

	FUNC0();
	FUNC1();
	FUNC3();
	FUNC2();

	*mntbuf = allstatvfs;
	return (sfused);
}