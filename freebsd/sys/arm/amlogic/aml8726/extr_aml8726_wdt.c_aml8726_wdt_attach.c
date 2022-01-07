
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct aml8726_wdt_softc {int * res; int ih_cookie; int dev; } ;
typedef int device_t ;
struct TYPE_2__ {int ctrl_cpu_mask; int ctrl_en; int term_cnt_mask; int reset_cnt_mask; } ;





 int AML_WDT_CTRL_CPU_WDRESET_SHIFT ;
 int AML_WDT_CTRL_EN ;
 int AML_WDT_CTRL_IRQ_EN ;
 int AML_WDT_CTRL_REG ;
 int AML_WDT_CTRL_TERMINAL_CNT_SHIFT ;
 int AML_WDT_LOCK_DESTROY (struct aml8726_wdt_softc*) ;
 int AML_WDT_LOCK_INIT (struct aml8726_wdt_softc*) ;
 int AML_WDT_RESET_CNT_SHIFT ;
 int CSR_READ_4 (struct aml8726_wdt_softc*,int ) ;
 int CSR_WRITE_4 (struct aml8726_wdt_softc*,int ,int) ;
 int ENXIO ;
 int EVENTHANDLER_REGISTER (int ,int ,struct aml8726_wdt_softc*,int ) ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int aml8726_soc_hw_rev ;
 int aml8726_soc_metal_rev ;
 int aml8726_wdt_intr ;
 struct aml8726_wdt_softc* aml8726_wdt_sc ;
 TYPE_1__ aml8726_wdt_soc_params ;
 int aml8726_wdt_spec ;
 int aml8726_wdt_watchdog ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 int bus_release_resources (int ,int ,int *) ;
 scalar_t__ bus_setup_intr (int ,int ,int,int ,int *,struct aml8726_wdt_softc*,int *) ;
 struct aml8726_wdt_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int watchdog_list ;

__attribute__((used)) static int
aml8726_wdt_attach(device_t dev)
{
 struct aml8726_wdt_softc *sc = device_get_softc(dev);


 if (aml8726_wdt_sc != ((void*)0))
  return (ENXIO);

 sc->dev = dev;

 if (bus_alloc_resources(dev, aml8726_wdt_spec, sc->res)) {
  device_printf(dev, "can not allocate resources for device\n");
  return (ENXIO);
 }




 switch (aml8726_soc_hw_rev) {
 case 130:
  aml8726_wdt_soc_params.ctrl_cpu_mask = 0xf <<
      AML_WDT_CTRL_CPU_WDRESET_SHIFT;
  switch (aml8726_soc_metal_rev) {
  case 128:
   aml8726_wdt_soc_params.ctrl_en = 1 << 19;
   aml8726_wdt_soc_params.term_cnt_mask = 0x07ffff <<
       AML_WDT_CTRL_TERMINAL_CNT_SHIFT;
   aml8726_wdt_soc_params.reset_cnt_mask = 0x07ffff <<
       AML_WDT_RESET_CNT_SHIFT;
   break;
  default:
   aml8726_wdt_soc_params.ctrl_en = 1 << 22;
   aml8726_wdt_soc_params.term_cnt_mask = 0x3fffff <<
       AML_WDT_CTRL_TERMINAL_CNT_SHIFT;
   aml8726_wdt_soc_params.reset_cnt_mask = 0x3fffff <<
       AML_WDT_RESET_CNT_SHIFT;
   break;
  }
  break;
 case 129:
  aml8726_wdt_soc_params.ctrl_cpu_mask = 0xf <<
      AML_WDT_CTRL_CPU_WDRESET_SHIFT;
  aml8726_wdt_soc_params.ctrl_en = 1 << 19;
  aml8726_wdt_soc_params.term_cnt_mask = 0x07ffff <<
      AML_WDT_CTRL_TERMINAL_CNT_SHIFT;
  aml8726_wdt_soc_params.reset_cnt_mask = 0x07ffff <<
      AML_WDT_RESET_CNT_SHIFT;
  break;
 default:
  aml8726_wdt_soc_params.ctrl_cpu_mask = 3 <<
      AML_WDT_CTRL_CPU_WDRESET_SHIFT;
  aml8726_wdt_soc_params.ctrl_en = 1 << 22;
  aml8726_wdt_soc_params.term_cnt_mask = 0x3fffff <<
      AML_WDT_CTRL_TERMINAL_CNT_SHIFT;
  aml8726_wdt_soc_params.reset_cnt_mask = 0x3fffff <<
      AML_WDT_RESET_CNT_SHIFT;
  break;
 }




 CSR_WRITE_4(sc, AML_WDT_CTRL_REG,
     (CSR_READ_4(sc, AML_WDT_CTRL_REG) & ~(AML_WDT_CTRL_IRQ_EN |
     AML_WDT_CTRL_EN)));





 AML_WDT_LOCK_INIT(sc);

 if (bus_setup_intr(dev, sc->res[1], INTR_TYPE_MISC | INTR_MPSAFE,
     aml8726_wdt_intr, ((void*)0), sc, &sc->ih_cookie)) {
  device_printf(dev, "could not setup interrupt handler\n");
  bus_release_resources(dev, aml8726_wdt_spec, sc->res);
  AML_WDT_LOCK_DESTROY(sc);
  return (ENXIO);
 }

 aml8726_wdt_sc = sc;

 EVENTHANDLER_REGISTER(watchdog_list, aml8726_wdt_watchdog, sc, 0);

 return (0);
}
