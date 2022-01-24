#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  stacksize_attr; int /*<<< orphan*/  guardsize_attr; scalar_t__ stackaddr_attr; } ;
struct pthread {TYPE_1__ attr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3(struct pthread *thrd)
{

	FUNC1((char *)thrd->attr.stackaddr_attr +
	    FUNC2(thrd->attr.guardsize_attr),
	    FUNC2(thrd->attr.stacksize_attr),
	    FUNC0());
}