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
typedef  int /*<<< orphan*/  rrwlock_t ;
typedef  scalar_t__ krw_t ;

/* Variables and functions */
 scalar_t__ RW_READER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2(rrwlock_t *rrl, krw_t rw, void *tag)
{
	if (rw == RW_READER)
		FUNC0(rrl, tag);
	else
		FUNC1(rrl);
}