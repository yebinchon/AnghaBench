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
typedef  int u_int32 ;
typedef  scalar_t__ int32 ;

/* Variables and functions */
 int DAY_NTP_STARTS ; 
 int SECSPERDAY ; 
 int FUNC0 (scalar_t__) ; 

__attribute__((used)) static u_int32
FUNC1(
	int32 year)
{
	u_int32 days;
	days = FUNC0(year-1) - DAY_NTP_STARTS + 1;
	return days * SECSPERDAY;
}