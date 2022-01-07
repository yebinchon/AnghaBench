
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {scalar_t__ tv_nsec; int tv_sec; } ;
struct mv_rtc_softc {int dummy; } ;
typedef int device_t ;


 scalar_t__ HALF_OF_SEC_NS ;
 int MV_RTC_LOCK (struct mv_rtc_softc*) ;
 int MV_RTC_UNLOCK (struct mv_rtc_softc*) ;
 int RTC_CLOCK_CORR ;
 int RTC_NOMINAL_TIMING ;
 int RTC_NOMINAL_TIMING_MASK ;
 int RTC_STATUS ;
 int RTC_TIME ;
 struct mv_rtc_softc* device_get_softc (int ) ;
 int mv_rtc_reg_read (struct mv_rtc_softc*,int ) ;
 int mv_rtc_reg_write (struct mv_rtc_softc*,int ,int) ;
 int mv_rtc_reset (int ) ;

__attribute__((used)) static int
mv_rtc_settime(device_t dev, struct timespec *ts)
{
 struct mv_rtc_softc *sc;

 sc = device_get_softc(dev);


 if (ts->tv_nsec >= HALF_OF_SEC_NS)
  ts->tv_sec++;
 ts->tv_nsec = 0;

 MV_RTC_LOCK(sc);

 if ((mv_rtc_reg_read(sc, RTC_CLOCK_CORR) & RTC_NOMINAL_TIMING_MASK) !=
     RTC_NOMINAL_TIMING) {

  mv_rtc_reset(dev);
 }






 mv_rtc_reg_write(sc, RTC_STATUS, 0x0);
 mv_rtc_reg_write(sc, RTC_STATUS, 0x0);
 mv_rtc_reg_write(sc, RTC_TIME, ts->tv_sec);

 MV_RTC_UNLOCK(sc);

 return (0);
}
