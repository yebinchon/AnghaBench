#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ lsb0; unsigned int length; unsigned int size; } ;
typedef  TYPE_1__ isc_bitstring_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,unsigned int) ; 
 unsigned int FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,unsigned int) ; 
 int FUNC5 (TYPE_1__*) ; 

void
FUNC6(isc_bitstring_t *source, unsigned int sbitpos,
		   isc_bitstring_t *target, unsigned int tbitpos,
		   unsigned int n)
{
	unsigned int tlast;

	/*
	 * Starting at bit 'sbitpos', copy 'n' bits from 'source' to
	 * the 'n' bits of 'target' starting at 'tbitpos'.
	 */

	FUNC3(FUNC5(source));
	FUNC3(FUNC5(target));
	FUNC3(source->lsb0 == target->lsb0);
	if (source->lsb0) {
		FUNC3(sbitpos <= source->length);
		sbitpos = FUNC2(source->size) - sbitpos;
		FUNC3(sbitpos >= n);
		sbitpos -= n;
	} else
		FUNC3(sbitpos + n <= source->length);
	tlast = tbitpos + n;
	if (target->lsb0) {
		FUNC3(tbitpos <= target->length);
		tbitpos = FUNC2(target->size) - tbitpos;
		FUNC3(tbitpos >= n);
		tbitpos -= n;
	} else
		FUNC3(tlast <= target->size);

	if (tlast > target->length)
		target->length = tlast;

	/*
	 * This is far from optimal...
	 */

	while (n > 0) {
		if (FUNC0(source, sbitpos))
			FUNC4(target, tbitpos);
		else
			FUNC1(target, tbitpos);
		sbitpos++;
		tbitpos++;
		n--;
	}
}