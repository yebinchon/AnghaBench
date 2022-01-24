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
 int /*<<< orphan*/  FUNC0 (float,int) ; 
 float FUNC1 (float,int*) ; 

float
FUNC2(float x, int expt)
{
	float exp_x, scale;
	int ex_expt;

	exp_x = FUNC1(x, &ex_expt);
	expt += ex_expt;
	FUNC0(scale, (0x7f + expt) << 23);
	return (exp_x * scale);
}