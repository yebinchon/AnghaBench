
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct timeval {int tv_sec; int tv_usec; } ;
struct timespec {int dummy; } ;
struct tegra_rtc_softc {int dummy; } ;
typedef int device_t ;


 int LOCK (struct tegra_rtc_softc*) ;
 int RD4 (struct tegra_rtc_softc*,int ) ;
 int RTC_MILLI_SECONDS ;
 int RTC_SHADOW_SECONDS ;
 int TIMEVAL_TO_TIMESPEC (struct timeval*,struct timespec*) ;
 int UNLOCK (struct tegra_rtc_softc*) ;
 struct tegra_rtc_softc* device_get_softc (int ) ;

__attribute__((used)) static int
tegra_rtc_gettime(device_t dev, struct timespec *ts)
{
 struct tegra_rtc_softc *sc;
 struct timeval tv;
 uint32_t msec, sec;

 sc = device_get_softc(dev);

 LOCK(sc);
 msec = RD4(sc, RTC_MILLI_SECONDS);
 sec = RD4(sc, RTC_SHADOW_SECONDS);
 UNLOCK(sc);
 tv.tv_sec = sec;
 tv.tv_usec = msec * 1000;
 TIMEVAL_TO_TIMESPEC(&tv, ts);
 return (0);
}
