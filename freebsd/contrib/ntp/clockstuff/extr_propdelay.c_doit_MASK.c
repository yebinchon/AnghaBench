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
 int FUNC0 (double,double,double,double,double,double*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,double,int,double) ; 

__attribute__((used)) static void
FUNC2(
	double lat1,
	double long1,
	double lat2,
	double long2,
	double h,
	char *str
	)
{
	int hops;
	double delay;

	hops = FUNC0(lat1, long1, lat2, long2, h, &delay);
	FUNC1("%sheight %g km, hops %d, delay %g seconds\n",
	       str, h, hops, delay);
}