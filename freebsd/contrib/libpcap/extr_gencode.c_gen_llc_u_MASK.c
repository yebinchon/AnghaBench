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
struct block {int dummy; } ;
typedef  int /*<<< orphan*/  compiler_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  BPF_B ; 
 int /*<<< orphan*/  LLC_U_FMT ; 
 int /*<<< orphan*/  OR_LLC ; 
 int /*<<< orphan*/  FUNC0 (struct block*,struct block*) ; 
 struct block* FUNC1 (int /*<<< orphan*/ *) ; 
 struct block* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

struct block *
FUNC3(compiler_state_t *cstate)
{
	struct block *b0, *b1;

	/*
	 * Check whether this is an LLC frame.
	 */
	b0 = FUNC1(cstate);

	/*
	 * Now compare the low-order 2 bit of the control byte against
	 * the appropriate value for U frames.
	 */
	b1 = FUNC2(cstate, OR_LLC, 2, BPF_B, LLC_U_FMT, 0x03);
	FUNC0(b0, b1);
	return b1;
}