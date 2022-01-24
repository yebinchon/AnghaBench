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
typedef  size_t ev_uint8_t ;

/* Variables and functions */
 scalar_t__* EVUTIL_TOUPPER_TABLE ; 

char FUNC0(char c)
{
	return ((char)EVUTIL_TOUPPER_TABLE[(ev_uint8_t)c]);
}