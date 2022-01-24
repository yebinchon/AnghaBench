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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint64_t ;
typedef  scalar_t__ uint16_t ;
struct pt_section {struct pt_sec_posix_mapping* mapping; } ;
struct pt_sec_posix_mapping {int /*<<< orphan*/ * begin; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,scalar_t__) ; 
 int pte_internal ; 

int FUNC1(const struct pt_section *section, uint8_t *buffer,
		      uint16_t size, uint64_t offset)
{
	struct pt_sec_posix_mapping *mapping;
	const uint8_t *begin;

	if (!buffer || !section)
		return -pte_internal;

	mapping = section->mapping;
	if (!mapping)
		return -pte_internal;

	/* We already checked in pt_section_read() that the requested memory
	 * lies within the section's boundaries.
	 *
	 * And we checked that the entire section was mapped.  There's no need
	 * to check for overflows, again.
	 */
	begin = mapping->begin + offset;

	FUNC0(buffer, begin, size);
	return (int) size;
}