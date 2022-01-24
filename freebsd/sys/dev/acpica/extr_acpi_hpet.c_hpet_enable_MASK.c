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
typedef  int /*<<< orphan*/  uint32_t ;
struct hpet_softc {int /*<<< orphan*/  mem_res; scalar_t__ legacy_route; } ;

/* Variables and functions */
 int /*<<< orphan*/  HPET_CNF_ENABLE ; 
 int /*<<< orphan*/  HPET_CNF_LEG_RT ; 
 int /*<<< orphan*/  HPET_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct hpet_softc *sc)
{
	uint32_t val;

	val = FUNC0(sc->mem_res, HPET_CONFIG);
	if (sc->legacy_route)
		val |= HPET_CNF_LEG_RT;
	else
		val &= ~HPET_CNF_LEG_RT;
	val |= HPET_CNF_ENABLE;
	FUNC1(sc->mem_res, HPET_CONFIG, val);
}