
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aml8726_iic_softc {int dummy; } ;
typedef int device_t ;


 int AML_I2C_CTRL_REG ;
 int AML_I2C_LOCK (struct aml8726_iic_softc*) ;
 int AML_I2C_MANUAL_EN ;
 int AML_I2C_MANUAL_SCL_O ;
 int AML_I2C_UNLOCK (struct aml8726_iic_softc*) ;
 int CSR_READ_4 (struct aml8726_iic_softc*,int ) ;
 int CSR_WRITE_4 (struct aml8726_iic_softc*,int ,int) ;
 struct aml8726_iic_softc* device_get_softc (int ) ;

__attribute__((used)) static void
aml8726_iic_setscl(device_t dev, int val)
{
 struct aml8726_iic_softc *sc = device_get_softc(dev);

 AML_I2C_LOCK(sc);

 CSR_WRITE_4(sc, AML_I2C_CTRL_REG, ((CSR_READ_4(sc, AML_I2C_CTRL_REG) &
     ~AML_I2C_MANUAL_SCL_O) | (val ? AML_I2C_MANUAL_SCL_O : 0) |
     AML_I2C_MANUAL_EN));

 AML_I2C_UNLOCK(sc);
}
