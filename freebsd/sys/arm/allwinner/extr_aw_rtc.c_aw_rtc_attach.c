
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct aw_rtc_softc {struct aw_rtc_conf* conf; int res; } ;
struct aw_rtc_conf {int rtc_losc_sta; } ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ ocd_data; } ;


 int DELAY (int) ;
 int ENXIO ;
 int LOSC_AUTO_SW_EN ;
 int LOSC_CTRL_REG ;
 int LOSC_GSM ;
 int LOSC_MAGIC ;
 int LOSC_OSC_SRC ;
 int RF_ACTIVE ;
 int RTC_READ (struct aw_rtc_softc*,int ) ;
 int RTC_RES_US ;
 int RTC_WRITE (struct aw_rtc_softc*,int ,int) ;
 int SYS_RES_MEMORY ;
 int aw_rtc_install_clocks (struct aw_rtc_softc*,int ) ;
 scalar_t__ bootverbose ;
 int bus_alloc_resource_any (int ,int ,int*,int ) ;
 int clock_register (int ,int ) ;
 int compat_data ;
 struct aw_rtc_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 TYPE_1__* ofw_bus_search_compatible (int ,int ) ;

__attribute__((used)) static int
aw_rtc_attach(device_t dev)
{
 struct aw_rtc_softc *sc = device_get_softc(dev);
 uint32_t val;
 int rid = 0;

 sc->res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &rid, RF_ACTIVE);
 if (!sc->res) {
  device_printf(dev, "could not allocate resources\n");
  return (ENXIO);
 }

 sc->conf = (struct aw_rtc_conf *)ofw_bus_search_compatible(dev, compat_data)->ocd_data;
 val = RTC_READ(sc, LOSC_CTRL_REG);
 val |= LOSC_AUTO_SW_EN;
 val |= LOSC_MAGIC | LOSC_GSM | LOSC_OSC_SRC;
 RTC_WRITE(sc, LOSC_CTRL_REG, val);

 DELAY(100);

 if (bootverbose) {
  val = RTC_READ(sc, sc->conf->rtc_losc_sta);
  if ((val & LOSC_OSC_SRC) == 0)
   device_printf(dev, "Using internal oscillator\n");
  else
   device_printf(dev, "Using external oscillator\n");
 }

 aw_rtc_install_clocks(sc, dev);

 clock_register(dev, RTC_RES_US);

 return (0);
}
