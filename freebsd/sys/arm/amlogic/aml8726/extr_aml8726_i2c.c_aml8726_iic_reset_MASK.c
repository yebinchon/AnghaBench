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
typedef  int /*<<< orphan*/  u_char ;
struct aml8726_iic_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AML_I2C_CTRL_REG ; 
 int /*<<< orphan*/  FUNC0 (struct aml8726_iic_softc*) ; 
 int AML_I2C_MANUAL_EN ; 
 int AML_I2C_MANUAL_SCL_O ; 
 int AML_I2C_MANUAL_SDA_O ; 
 int /*<<< orphan*/  FUNC1 (struct aml8726_iic_softc*) ; 
 int FUNC2 (struct aml8726_iic_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct aml8726_iic_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int IIC_ENOADDR ; 
 struct aml8726_iic_softc* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev, u_char speed, u_char addr, u_char *oldaddr)
{
	struct aml8726_iic_softc *sc = FUNC5(dev);

	FUNC0(sc);

	FUNC3(sc, AML_I2C_CTRL_REG,
	    (FUNC2(sc, AML_I2C_CTRL_REG) | AML_I2C_MANUAL_SDA_O |
	    AML_I2C_MANUAL_SCL_O | AML_I2C_MANUAL_EN));

	FUNC1(sc);

	/* Wait for 10 usec */
	FUNC4(10);

	return (IIC_ENOADDR);
}