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
 double FUNC0 (double,double,double,double) ; 
 double FUNC1 (double) ; 

__attribute__((used)) static void
FUNC2(
	double lat1,
	double long1,
	double lat2,
	double long2,
	double *delay
	)
{
	double dg;	/* great circle distance */

	dg = FUNC0(lat1, long1, lat2, long2);

	*delay = FUNC1(dg);
}