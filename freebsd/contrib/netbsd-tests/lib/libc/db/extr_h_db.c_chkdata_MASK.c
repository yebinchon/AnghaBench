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
typedef  enum S { ____Placeholder_S } S ;

/* Variables and functions */
 int DATA ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lineno ; 

__attribute__((used)) static void
FUNC1(enum S state)
{
	if (state != DATA)
		FUNC0(1, "line %zu: not expecting data", lineno);
}