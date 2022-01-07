
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; } ;
struct timespec {int dummy; } ;
struct tegra_rtc_softc {int dummy; } ;
typedef int device_t ;


 int LOCK (struct tegra_rtc_softc*) ;
 int RTC_SECONDS ;
 int TIMESPEC_TO_TIMEVAL (struct timeval*,struct timespec*) ;
 int UNLOCK (struct tegra_rtc_softc*) ;
 int WR4 (struct tegra_rtc_softc*,int ,int ) ;
 struct tegra_rtc_softc* device_get_softc (int ) ;
 int tegra_rtc_wait (struct tegra_rtc_softc*) ;

__attribute__((used)) static int
tegra_rtc_settime(device_t dev, struct timespec *ts)
{
 struct tegra_rtc_softc *sc;
 struct timeval tv;

 sc = device_get_softc(dev);

 LOCK(sc);
 TIMESPEC_TO_TIMEVAL(&tv, ts);
 tegra_rtc_wait(sc);
 WR4(sc, RTC_SECONDS, tv.tv_sec);
 UNLOCK(sc);

 return (0);
}
