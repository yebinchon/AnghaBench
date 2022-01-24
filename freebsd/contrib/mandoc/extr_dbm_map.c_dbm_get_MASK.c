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
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 void* dbm_base ; 
 scalar_t__ max_offset ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,...) ; 

void *
FUNC2(int32_t offset)
{
	offset = FUNC0(offset);
	if (offset < 0) {
		FUNC1("dbm_get: Database corrupt: offset %d", offset);
		return NULL;
	}
	if (offset >= max_offset) {
		FUNC1("dbm_get: Database corrupt: offset %d > %d",
		    offset, max_offset);
		return NULL;
	}
	return dbm_base + offset;
}