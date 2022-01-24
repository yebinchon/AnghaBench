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
struct pmcstat_image {scalar_t__ pi_type; } ;
struct pmcstat_args {int dummy; } ;

/* Variables and functions */
 scalar_t__ PMCSTAT_IMAGE_INDETERMINABLE ; 
 scalar_t__ PMCSTAT_IMAGE_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct pmcstat_image*,struct pmcstat_args*) ; 
 int /*<<< orphan*/  FUNC2 (struct pmcstat_image*,struct pmcstat_args*) ; 

void
FUNC3(struct pmcstat_image *image,
    struct pmcstat_args *args)
{
	FUNC0(image->pi_type == PMCSTAT_IMAGE_UNKNOWN);

	/* Try each kind of handler in turn */
	if (image->pi_type == PMCSTAT_IMAGE_UNKNOWN)
		FUNC2(image, args);
	if (image->pi_type == PMCSTAT_IMAGE_UNKNOWN)
		FUNC1(image, args);

	/*
	 * Otherwise, remember that we tried to determine
	 * the object's type and had failed.
	 */
	if (image->pi_type == PMCSTAT_IMAGE_UNKNOWN)
		image->pi_type = PMCSTAT_IMAGE_INDETERMINABLE;
}