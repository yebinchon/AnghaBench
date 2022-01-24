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
typedef  scalar_t__ isc_uint8_t ;
typedef  int isc_uint32_t ;
typedef  scalar_t__ isc_result_t ;

/* Variables and functions */
 scalar_t__ ISC_R_RANGE ; 
 scalar_t__ ISC_R_SUCCESS ; 
 scalar_t__ FUNC0 (int*,char const*,int) ; 

isc_result_t
FUNC1(isc_uint8_t *uip, const char *string, int base) {
	isc_uint32_t val;
	isc_result_t result;
	result = FUNC0(&val, string, base);
	if (result != ISC_R_SUCCESS)
		return (result);
	if (val > 0xFF)
		return (ISC_R_RANGE);
	*uip = (isc_uint8_t) val;
	return (ISC_R_SUCCESS);
}