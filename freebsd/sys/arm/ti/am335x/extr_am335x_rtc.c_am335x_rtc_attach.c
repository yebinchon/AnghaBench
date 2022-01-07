
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct am335x_rtc_softc {int sc_mem_res; int sc_irq_res; int sc_dev; } ;
typedef int device_t ;


 int ENXIO ;
 int PMIC_PWR_ENABLE ;
 int RF_ACTIVE ;
 int RTC_CLK ;
 int RTC_CTRL ;
 int RTC_INTR ;
 int RTC_KICK0R ;
 int RTC_KICK0R_PASS ;
 int RTC_KICK1R ;
 int RTC_KICK1R_PASS ;
 int RTC_LOCK_INIT (struct am335x_rtc_softc*) ;
 int RTC_OSC ;
 int RTC_OSC_32KCLK_EN ;
 int RTC_OSC_32KCLK_SEL ;
 int RTC_PMIC ;
 int RTC_READ4 (struct am335x_rtc_softc*,int ) ;
 int RTC_REVISION ;
 int RTC_STATUS ;
 int RTC_STATUS_ALARM ;
 int RTC_STATUS_ALARM2 ;
 int RTC_WRITE4 (struct am335x_rtc_softc*,int ,int) ;
 int SYS_RES_MEMORY ;
 int am335x_rtc_irq_spec ;
 int bus_alloc_resource_any (int ,int ,int*,int ) ;
 scalar_t__ bus_alloc_resources (int ,int ,int ) ;
 int bus_release_resource (int ,int ,int ,int ) ;
 struct am335x_rtc_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 struct am335x_rtc_softc* rtc_sc ;
 int ti_prcm_clk_enable (int ) ;

__attribute__((used)) static int
am335x_rtc_attach(device_t dev)
{
 int rid;
 struct am335x_rtc_softc *sc;
 uint32_t rev;

 if (rtc_sc != ((void*)0))
  return (ENXIO);
 rtc_sc = sc = device_get_softc(dev);
 sc->sc_dev = dev;
 rid = 0;
 sc->sc_mem_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid,
     RF_ACTIVE);
 if (!sc->sc_mem_res) {
  device_printf(dev, "cannot allocate memory resources\n");
  return (ENXIO);
 }
 if (bus_alloc_resources(dev, am335x_rtc_irq_spec, sc->sc_irq_res) != 0) {
  bus_release_resource(dev, SYS_RES_MEMORY, 0, sc->sc_mem_res);
  device_printf(dev, "cannot allocate irq resources\n");
  return (ENXIO);
 }
 RTC_LOCK_INIT(sc);


 ti_prcm_clk_enable(RTC_CLK);
 rev = RTC_READ4(sc, RTC_REVISION);
 device_printf(dev, "AM335X RTC v%d.%d.%d\n",
            (rev >> 8) & 0x7, (rev >> 6) & 0x3, rev & 0x3f);

 RTC_WRITE4(sc, RTC_KICK0R, RTC_KICK0R_PASS);
 RTC_WRITE4(sc, RTC_KICK1R, RTC_KICK1R_PASS);

 RTC_WRITE4(sc, RTC_CTRL, 0);

 RTC_WRITE4(sc, RTC_INTR, 0);

 RTC_WRITE4(sc, RTC_STATUS, RTC_STATUS_ALARM2 | RTC_STATUS_ALARM);

 RTC_WRITE4(sc, RTC_OSC, RTC_OSC_32KCLK_EN | RTC_OSC_32KCLK_SEL);

 RTC_WRITE4(sc, RTC_PMIC, PMIC_PWR_ENABLE);

 return (0);
}
