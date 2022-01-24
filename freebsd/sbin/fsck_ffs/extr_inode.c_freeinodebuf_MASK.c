#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/ * b_buf; } ;
struct TYPE_5__ {TYPE_1__ b_un; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  fswritefd ; 
 TYPE_2__ inobuf ; 

void
FUNC2(void)
{

	/*
	 * Flush old contents in case they have been updated.
	 */
	FUNC0(fswritefd, &inobuf);
	if (inobuf.b_un.b_buf != NULL)
		FUNC1((char *)inobuf.b_un.b_buf);
	inobuf.b_un.b_buf = NULL;
}