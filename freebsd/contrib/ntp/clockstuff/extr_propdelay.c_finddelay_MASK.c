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
 double MILE ; 
 double RADPERDEG ; 
 scalar_t__ debug ; 
 double FUNC0 (double,double,double,double) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,...) ; 
 double FUNC2 (double,double,int) ; 
 double FUNC3 (double,double,int) ; 

__attribute__((used)) static int
FUNC4(
	double lat1,
	double long1,
	double lat2,
	double long2,
	double h,
	double *delay
	)
{
	double dg;	/* great circle distance */
	double delta;	/* wave angle */
	int n;		/* number of hops */

	dg = FUNC0(lat1, long1, lat2, long2);
	if (debug)
	    FUNC1("great circle distance %g km %g miles\n", dg, dg/MILE);
	
	n = 1;
	while ((delta = FUNC3(dg, h, n)) < 0.0) {
		if (debug)
		    FUNC1("tried %d hop%s, no good\n", n, n>1?"s":"");
		n++;
	}
	if (debug)
	    FUNC1("%d hop%s okay, wave angle is %g\n", n, n>1?"s":"",
		   delta / RADPERDEG);

	*delay = FUNC2(dg, h, n);
	return n;
}