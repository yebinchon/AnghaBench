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
typedef  scalar_t__ uint8_t ;

/* Variables and functions */
 scalar_t__ UMAD_CLASS_SUBN_ADM ; 
 char const* FUNC0 (scalar_t__) ; 
 char const* FUNC1 (scalar_t__) ; 

const char * FUNC2(uint8_t mgmt_class, uint8_t method)
{
	if (mgmt_class == UMAD_CLASS_SUBN_ADM)
		return(FUNC1(method));

	return (FUNC0(method));
}