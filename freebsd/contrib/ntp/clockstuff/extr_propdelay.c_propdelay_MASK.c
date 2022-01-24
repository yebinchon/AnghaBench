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
 double EARTHRADIUS ; 
 double LIGHTSPEED ; 
 double PI ; 
 double FUNC0 (scalar_t__) ; 
 int debug ; 
 int /*<<< orphan*/  FUNC1 (char*,double,double,int,double) ; 
 double FUNC2 (double) ; 
 scalar_t__ FUNC3 (double) ; 

__attribute__((used)) static double
FUNC4(
	double dg,
	double h,
	int n
	)
{
	double phi;
	double theta;
	double td;

	theta = dg / (EARTHRADIUS * (double)(2 * n));
	phi = (PI/2.0) - FUNC0((h / (EARTHRADIUS * FUNC2(theta))) + FUNC3(theta/2));
	td = dg / (LIGHTSPEED * FUNC2(phi));
	if (debug >= 2)
	    FUNC1("propdelay dist %g height %g hops %d time %g\n",
		   dg, h, n, td);
	return td;
}