
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct timespec {int tv_sec; scalar_t__ tv_nsec; } ;
struct mv_rtc_softc {int dummy; } ;
typedef int device_t ;


 int MV_RTC_LOCK (struct mv_rtc_softc*) ;
 int MV_RTC_UNLOCK (struct mv_rtc_softc*) ;
 int RTC_TIME ;
 struct mv_rtc_softc* device_get_softc (int ) ;
 int mv_rtc_reg_read (struct mv_rtc_softc*,int ) ;

__attribute__((used)) static int
mv_rtc_gettime(device_t dev, struct timespec *ts)
{
 struct mv_rtc_softc *sc;
 uint32_t val, val_check;

 sc = device_get_softc(dev);

 MV_RTC_LOCK(sc);




 val = mv_rtc_reg_read(sc, RTC_TIME);
 val_check = mv_rtc_reg_read(sc, RTC_TIME);
 if (val_check - val > 1)
  val_check = mv_rtc_reg_read(sc, RTC_TIME);

 MV_RTC_UNLOCK(sc);

 ts->tv_sec = val_check;

 ts->tv_nsec = 0;

 return (0);
}
