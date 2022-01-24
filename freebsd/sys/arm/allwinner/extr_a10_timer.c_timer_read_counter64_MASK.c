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
typedef  int uint64_t ;
typedef  int uint32_t ;
struct a10_timer_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CNT64_CTRL_REG ; 
 int CNT64_CTRL_RL_EN ; 
 int /*<<< orphan*/  CNT64_HI_REG ; 
 int /*<<< orphan*/  CNT64_LO_REG ; 
 int FUNC0 (struct a10_timer_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct a10_timer_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static uint64_t
FUNC2(struct a10_timer_softc *sc)
{
	uint32_t lo, hi;

	/* Latch counter, wait for it to be ready to read. */
	FUNC1(sc, CNT64_CTRL_REG, CNT64_CTRL_RL_EN);
	while (FUNC0(sc, CNT64_CTRL_REG) & CNT64_CTRL_RL_EN)
		continue;

	hi = FUNC0(sc, CNT64_HI_REG);
	lo = FUNC0(sc, CNT64_LO_REG);

	return (((uint64_t)hi << 32) | lo);
}