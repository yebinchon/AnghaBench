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
 double SATHEIGHT ; 
 double FUNC0 (double) ; 
 int debug ; 
 int /*<<< orphan*/  FUNC1 (char*,double,double,double) ; 
 double FUNC2 (double) ; 
 double FUNC3 (double) ; 

__attribute__((used)) static double
FUNC4(
	double dg
	)
{
	double k1, k2, dist;
	double theta;
	double td;

	theta = dg / (EARTHRADIUS);
	k1 = EARTHRADIUS * FUNC2(theta);
	k2 = SATHEIGHT - (EARTHRADIUS * FUNC0(theta));
	if (debug >= 2)
	    FUNC1("Theta %g k1 %g k2 %g\n", theta, k1, k2);
	dist = FUNC3(k1*k1 + k2*k2);
	td = dist / LIGHTSPEED;
	if (debug >= 2)
	    FUNC1("propdelay dist %g height %g time %g\n", dg, dist, td);
	return td;
}