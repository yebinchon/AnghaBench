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
typedef  scalar_t__ u_int ;

/* Variables and functions */
 scalar_t__ MSR_APICBASE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 

bool
FUNC1(u_int msr)
{

	return (FUNC0(msr) || msr == MSR_APICBASE);
}