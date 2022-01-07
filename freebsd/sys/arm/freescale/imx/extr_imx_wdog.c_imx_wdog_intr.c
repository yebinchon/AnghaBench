
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imx_wdog_softc {int * sc_res; } ;


 int BUS_SPACE_PHYSADDR (int ,int ) ;
 int FILTER_HANDLED ;
 size_t MEMRES ;
 int WDOG_CR_REG ;
 int imx_wdog_cpu_reset (int ) ;

__attribute__((used)) static int
imx_wdog_intr(void *arg)
{
 struct imx_wdog_softc *sc = arg;
 imx_wdog_cpu_reset(BUS_SPACE_PHYSADDR(sc->sc_res[MEMRES], WDOG_CR_REG));

 return (FILTER_HANDLED);
}
