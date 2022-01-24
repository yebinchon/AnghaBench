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
typedef  scalar_t__ uint32_t ;
struct iso9660 {scalar_t__ volume_block; } ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 scalar_t__ SYSTEM_AREA_BLOCK ; 
 scalar_t__ FUNC0 (unsigned char const*) ; 
 scalar_t__ FUNC1 (unsigned char const*) ; 

__attribute__((used)) static int
FUNC2(struct iso9660 *iso9660, const unsigned char *h)
{
	int32_t location;

	/* Type of the Volume Partition Descriptor must be 3. */
	if (h[0] != 3)
		return (0);

	/* Volume Descriptor Version must be 1. */
	if (h[6] != 1)
		return (0);
	/* Unused Field */
	if (h[7] != 0)
		return (0);

	location = FUNC1(h + 72);
	if (location <= SYSTEM_AREA_BLOCK ||
	    location >= iso9660->volume_block)
		return (0);
	if ((uint32_t)location != FUNC0(h + 76))
		return (0);

	return (1);
}