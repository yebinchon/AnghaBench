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
typedef  int uint32_t ;
struct ipu_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct ipu_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ipu_softc*,int /*<<< orphan*/ ,int) ; 
 int MAP_CONF_VAL_MASK ; 

__attribute__((used)) static void
FUNC3(struct ipu_softc *sc, int map)
{
	uint32_t reg, shift;

	reg = FUNC1(sc, FUNC0(map));
	if (map & 1)
		shift = 16;
	else
		shift = 0;
	reg &= ~(MAP_CONF_VAL_MASK << shift);
	FUNC2(sc, FUNC0(map), reg);
}