
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_rtc_softc {int dev; } ;


 int DELAY (int) ;
 int RD4 (struct tegra_rtc_softc*,int ) ;
 int RTC_BUSY ;
 int RTC_BUSY_STATUS ;
 int device_printf (int ,char*) ;

__attribute__((used)) static void
tegra_rtc_wait(struct tegra_rtc_softc *sc)
{
 int timeout;

 for (timeout = 500; timeout >0; timeout--) {
  if ((RD4(sc, RTC_BUSY) & RTC_BUSY_STATUS) == 0)
   break;
  DELAY(1);
 }
 if (timeout <= 0)
  device_printf(sc->dev, "Device busy timeouted\n");

}
