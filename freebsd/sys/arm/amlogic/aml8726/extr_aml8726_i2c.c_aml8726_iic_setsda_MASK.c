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
struct aml8726_iic_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AML_I2C_CTRL_REG ; 
 int /*<<< orphan*/  FUNC0 (struct aml8726_iic_softc*) ; 
 int AML_I2C_MANUAL_EN ; 
 int AML_I2C_MANUAL_SDA_O ; 
 int /*<<< orphan*/  FUNC1 (struct aml8726_iic_softc*) ; 
 int FUNC2 (struct aml8726_iic_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct aml8726_iic_softc*,int /*<<< orphan*/ ,int) ; 
 struct aml8726_iic_softc* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(device_t dev, int val)
{
	struct aml8726_iic_softc *sc = FUNC4(dev);

	FUNC0(sc);

	FUNC3(sc, AML_I2C_CTRL_REG, ((FUNC2(sc, AML_I2C_CTRL_REG) &
	    ~AML_I2C_MANUAL_SDA_O) | (val ? AML_I2C_MANUAL_SDA_O : 0) |
	    AML_I2C_MANUAL_EN));

	FUNC1(sc);
}