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
 scalar_t__ donefld ; 
 int /*<<< orphan*/  FUNC0 () ; 

Cell *FUNC1(Node **a, int n)	/* get NF */
{
	if (donefld == 0)
		FUNC0();
	return (Cell *) a[0];
}