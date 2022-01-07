
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aml8726_wdt_softc {int dev; } ;


 int AML_WDT_CTRL_EN ;
 int AML_WDT_CTRL_IRQ_EN ;
 int AML_WDT_CTRL_REG ;
 int AML_WDT_LOCK (struct aml8726_wdt_softc*) ;
 int AML_WDT_UNLOCK (struct aml8726_wdt_softc*) ;
 int CSR_BARRIER (struct aml8726_wdt_softc*,int ) ;
 int CSR_READ_4 (struct aml8726_wdt_softc*,int ) ;
 int CSR_WRITE_4 (struct aml8726_wdt_softc*,int ,int) ;
 int FILTER_HANDLED ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
aml8726_wdt_intr(void *arg)
{
 struct aml8726_wdt_softc *sc = (struct aml8726_wdt_softc *)arg;
 AML_WDT_LOCK(sc);

 CSR_WRITE_4(sc, AML_WDT_CTRL_REG,
     (CSR_READ_4(sc, AML_WDT_CTRL_REG) & ~(AML_WDT_CTRL_IRQ_EN |
     AML_WDT_CTRL_EN)));

 CSR_BARRIER(sc, AML_WDT_CTRL_REG);

 AML_WDT_UNLOCK(sc);

 device_printf(sc->dev, "timeout expired\n");

 return (FILTER_HANDLED);
}
