
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tegra_rtc_softc {int dummy; } ;


 int LOCK (struct tegra_rtc_softc*) ;
 int RD4 (struct tegra_rtc_softc*,int ) ;
 int RTC_INTR_STATUS ;
 int UNLOCK (struct tegra_rtc_softc*) ;
 int WR4 (struct tegra_rtc_softc*,int ,int ) ;

__attribute__((used)) static void
tegra_rtc_intr(void *arg)
{
 struct tegra_rtc_softc *sc;
 uint32_t status;

 sc = (struct tegra_rtc_softc *)arg;
 LOCK(sc);
 status = RD4(sc, RTC_INTR_STATUS);
 WR4(sc, RTC_INTR_STATUS, status);
 UNLOCK(sc);
}
