#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  lsb0; scalar_t__ size; scalar_t__ length; int /*<<< orphan*/ * data; scalar_t__ magic; } ;
typedef  TYPE_1__ isc_bitstring_t ;

/* Variables and functions */
 int /*<<< orphan*/  ISC_FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void
FUNC2(isc_bitstring_t *bitstring) {

	/*
	 * Invalidate 'bitstring'.
	 */

	FUNC0(FUNC1(bitstring));

	bitstring->magic = 0;
	bitstring->data = NULL;
	bitstring->length = 0;
	bitstring->size = 0;
	bitstring->lsb0 = ISC_FALSE;
}