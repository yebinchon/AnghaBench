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
struct tda19988_softc {int /*<<< orphan*/  sc_dev; int /*<<< orphan*/  sc_cec_addr; } ;
struct iic_msg {int member_2; int /*<<< orphan*/ * member_3; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  IIC_M_RD ; 
 int /*<<< orphan*/  IIC_M_WR ; 
 int FUNC0 (int /*<<< orphan*/ ,struct iic_msg*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

__attribute__((used)) static int
FUNC2(struct tda19988_softc *sc, uint8_t addr, uint8_t *data)
{
	int result;
	struct iic_msg msg[] = {
		{ sc->sc_cec_addr, &IIC_M_WR, 1, addr },
		{ sc->sc_cec_addr, &IIC_M_RD, 1, *data },
	};

	result =  FUNC0(sc->sc_dev, msg, 2);
	if (result)
		FUNC1("tda19988_cec_read failed: %d\n", result);
	return (result);
}