#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  isc_result_t ;
struct TYPE_8__ {unsigned int length; int /*<<< orphan*/  base; } ;
typedef  TYPE_1__ isc_region_t ;
struct TYPE_9__ {unsigned int used; } ;
typedef  TYPE_2__ isc_buffer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  ISC_R_NOSPACE ; 
 int /*<<< orphan*/  ISC_R_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (TYPE_2__*) ; 
 unsigned char* FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/ ,unsigned int) ; 

isc_result_t
FUNC5(isc_buffer_t *b, const isc_region_t *r) {
	unsigned char *base;
	unsigned int available;

	FUNC1(FUNC0(b));
	FUNC1(r != NULL);

	/*
	 * XXXDCL
	 */
	base = FUNC3(b);
	available = FUNC2(b);
	if (r->length > available)
		return (ISC_R_NOSPACE);
	FUNC4(base, r->base, r->length);
	b->used += r->length;

	return (ISC_R_SUCCESS);
}