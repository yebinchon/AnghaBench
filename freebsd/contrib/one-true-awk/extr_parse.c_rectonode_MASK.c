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
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  Cell ;

/* Variables and functions */
 int /*<<< orphan*/  CUNK ; 
 int /*<<< orphan*/  INDIRECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

Node *FUNC2(void)	/* make $0 into a Node */
{
	extern Cell *literal0;
	return FUNC1(INDIRECT, FUNC0(literal0, CUNK));
}