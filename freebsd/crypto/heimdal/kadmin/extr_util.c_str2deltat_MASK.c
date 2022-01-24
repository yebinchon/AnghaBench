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
typedef  int krb5_deltat ;

/* Variables and functions */
 int FUNC0 (char const*,char*) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 

int
FUNC2(const char *str, krb5_deltat *delta)
{
    int res;

    if(FUNC1(str, "unlimited") == 0) {
	*delta = 0;
	return 0;
    }
    res = FUNC0(str, "day");
    if (res < 0)
	return res;
    else {
	*delta = res;
	return 0;
    }
}