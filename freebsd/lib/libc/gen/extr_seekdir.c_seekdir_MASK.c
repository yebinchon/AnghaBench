#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  dd_lock; } ;
typedef  TYPE_1__ DIR ;

/* Variables and functions */
 scalar_t__ __isthreaded ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,long) ; 

void
FUNC3(DIR *dirp, long loc)
{
	if (__isthreaded)
		FUNC0(&dirp->dd_lock);
	FUNC2(dirp, loc);
	if (__isthreaded)
		FUNC1(&dirp->dd_lock);
}