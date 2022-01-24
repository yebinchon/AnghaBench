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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct tda19988_softc {scalar_t__ sc_current_page; int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_addr; } ;
struct iic_msg {int member_2; int /*<<< orphan*/ * member_3; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  IIC_M_RD ; 
 int /*<<< orphan*/  IIC_M_WR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct iic_msg*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct tda19988_softc*,scalar_t__) ; 

__attribute__((used)) static int
FUNC5(struct tda19988_softc *sc, uint16_t addr, uint8_t *data)
{
	uint8_t reg;
	int result;
	struct iic_msg msg[] = {
		{ sc->sc_addr, &IIC_M_WR, 1, reg },
		{ sc->sc_addr, &IIC_M_RD, 1, *data },
	};

	reg = FUNC0(addr);

	if (sc->sc_current_page != FUNC1(addr))
		FUNC4(sc, FUNC1(addr));

	result = (FUNC3(sc->sc_dev, msg, 2));
	if (result)
		FUNC2(sc->sc_dev, "tda19988_reg_read failed: %d\n", result);
	return (result);
}