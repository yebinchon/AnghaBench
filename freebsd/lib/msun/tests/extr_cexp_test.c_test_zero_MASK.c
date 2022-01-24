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

/* Variables and functions */
 int /*<<< orphan*/  ALL_STD_EXCEPT ; 
 double FUNC0 (double,double) ; 
 int /*<<< orphan*/  FUNC1 (double,double,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(void)
{

	/* cexp(0) = 1, no exceptions raised */
	FUNC1(0.0, 1.0, ALL_STD_EXCEPT, 0, 1);
	FUNC1(-0.0, 1.0, ALL_STD_EXCEPT, 0, 1);
	FUNC1(FUNC0(0.0, -0.0), FUNC0(1.0, -0.0), ALL_STD_EXCEPT, 0, 1);
	FUNC1(FUNC0(-0.0, -0.0), FUNC0(1.0, -0.0), ALL_STD_EXCEPT, 0, 1);
}