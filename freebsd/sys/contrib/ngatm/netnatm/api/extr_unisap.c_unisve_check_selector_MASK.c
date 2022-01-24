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
struct unisve_selector {scalar_t__ tag; } ;

/* Variables and functions */
 scalar_t__ UNISVE_ABSENT ; 
 scalar_t__ UNISVE_ANY ; 
 int UNISVE_ERROR_BAD_TAG ; 
 int UNISVE_OK ; 
 scalar_t__ UNISVE_PRESENT ; 

int
FUNC0(const struct unisve_selector *sve)
{
	if (sve->tag != UNISVE_PRESENT &&
	    sve->tag != UNISVE_ABSENT &&
	    sve->tag != UNISVE_ANY)
		return (UNISVE_ERROR_BAD_TAG);
	return (UNISVE_OK);
}