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
typedef  int uint8_t ;
typedef  int uint32_t ;

/* Variables and functions */
 int ERR_IRQ ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MPIC_ERR_MASK ; 
 int /*<<< orphan*/  MPIC_ICM ; 
 int MPIC_INT_ERR ; 
 int /*<<< orphan*/  MPIC_ISE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mv_mpic_sc ; 

__attribute__((used)) static void
FUNC3(uintptr_t nb)
{
	uint32_t mask;
	uint8_t bit_off;

	FUNC2(mv_mpic_sc, MPIC_ISE, MPIC_INT_ERR);
	FUNC1(mv_mpic_sc, MPIC_ICM, MPIC_INT_ERR);

	bit_off = nb - ERR_IRQ;
	mask = FUNC0(mv_mpic_sc, MPIC_ERR_MASK);
	mask |= (1 << bit_off);
	FUNC1(mv_mpic_sc, MPIC_ERR_MASK, mask);
}