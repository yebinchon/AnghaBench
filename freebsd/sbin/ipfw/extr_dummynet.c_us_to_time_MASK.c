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
 int /*<<< orphan*/  FUNC0 (char*,char*,float) ; 

void 
FUNC1(int t,char *strt)
{
	if (t < 0)
		strt[0]='\0';
	else if ( t==0 )
		FUNC0(strt,"%d", t);
	else if (t< 1000)
		FUNC0(strt,"%dus", t);
	else if (t < 1000000) 
		FUNC0(strt,"%gms", (float) t / 1000);
	else
		FUNC0(strt,"%gfs", (float) t / 1000000);
}