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
struct aw_reset_softc {int /*<<< orphan*/  mtx; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (intptr_t) ; 
 int FUNC1 (struct aw_reset_softc*,int /*<<< orphan*/ ) ; 
 int FUNC2 (intptr_t) ; 
 struct aw_reset_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(device_t dev, intptr_t id, bool *reset)
{
	struct aw_reset_softc *sc;
	uint32_t reg_value;

	sc = FUNC3(dev);

	FUNC4(&sc->mtx);
	reg_value = FUNC1(sc, FUNC0(id));
	FUNC5(&sc->mtx);

	*reset = (reg_value & (1 << FUNC2(id))) != 0 ? false : true;

	return (0);
}