#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ isc_uint8_t ;
struct TYPE_5__ {int used; int current; } ;
typedef  TYPE_1__ isc_buffer_t ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned char* FUNC2 (TYPE_1__*) ; 

isc_uint8_t
FUNC3(isc_buffer_t *b) {
	unsigned char *cp;
	isc_uint8_t result;

	/*
	 * Read an unsigned 8-bit integer from 'b' and return it.
	 */

	FUNC1(FUNC0(b));
	FUNC1(b->used - b->current >= 1);

	cp = FUNC2(b);
	b->current += 1;
	result = ((isc_uint8_t)(cp[0]));

	return (result);
}