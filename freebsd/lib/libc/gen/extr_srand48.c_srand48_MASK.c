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

/* Variables and functions */
 int /*<<< orphan*/  RAND48_ADD ; 
 int /*<<< orphan*/  RAND48_MULT_0 ; 
 int /*<<< orphan*/  RAND48_MULT_1 ; 
 int /*<<< orphan*/  RAND48_MULT_2 ; 
 unsigned short RAND48_SEED_0 ; 
 int /*<<< orphan*/  _rand48_add ; 
 int /*<<< orphan*/ * _rand48_mult ; 
 unsigned short* _rand48_seed ; 

void
FUNC0(long seed)
{
	_rand48_seed[0] = RAND48_SEED_0;
	_rand48_seed[1] = (unsigned short) seed;
	_rand48_seed[2] = (unsigned short) (seed >> 16);
	_rand48_mult[0] = RAND48_MULT_0;
	_rand48_mult[1] = RAND48_MULT_1;
	_rand48_mult[2] = RAND48_MULT_2;
	_rand48_add = RAND48_ADD;
}