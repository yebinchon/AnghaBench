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
 double RADPERDEG ; 
 double FUNC0 (int) ; 
 int FUNC1 (double) ; 
 int debug ; 
 int /*<<< orphan*/  FUNC2 (char*,double,double,double,double,double) ; 
 int FUNC3 (double) ; 

__attribute__((used)) static double
FUNC4(
	double lat1,
	double long1,
	double lat2,
	double long2
	)
{
	double dg;
	double l1r, l2r;

	l1r = lat1 * RADPERDEG;
	l2r = lat2 * RADPERDEG;
	dg = EARTHRADIUS * FUNC0(
		(FUNC1(l1r) * FUNC1(l2r) * FUNC1((long2-long1)*RADPERDEG))
		+ (FUNC3(l1r) * FUNC3(l2r)));
	if (debug >= 2)
	    FUNC2(
		    "greatcircle lat1 %g long1 %g lat2 %g long2 %g dist %g\n",
		    lat1, long1, lat2, long2, dg);
	return dg;
}