
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct timespec {scalar_t__ tv_nsec; int tv_sec; } ;
struct clocktime {scalar_t__ year; int hour; int min; int sec; int mon; int day; } ;
struct aw_rtc_softc {TYPE_1__* conf; } ;
typedef int device_t ;
struct TYPE_2__ {int rtc_time; int rtc_date; } ;


 int DELAY (int) ;
 int EINVAL ;
 scalar_t__ HALF_OF_SEC_NS ;
 int IS_LEAP_YEAR (scalar_t__) ;
 int LOSC_BUSY_MASK ;
 int LOSC_CTRL_REG ;
 int RTC_READ (struct aw_rtc_softc*,int ) ;
 int RTC_TIMEOUT ;
 int RTC_WRITE (struct aw_rtc_softc*,int ,int) ;
 int SET_DAY_VALUE (int ) ;
 int SET_HOUR_VALUE (int ) ;
 int SET_LEAP_VALUE (int ) ;
 int SET_MIN_VALUE (int ) ;
 int SET_MON_VALUE (int ) ;
 int SET_SEC_VALUE (int ) ;
 int SET_YEAR_VALUE (scalar_t__) ;
 scalar_t__ YEAR_MAX ;
 scalar_t__ YEAR_MIN ;
 scalar_t__ YEAR_OFFSET ;
 int clock_ts_to_ct (struct timespec*,struct clocktime*) ;
 struct aw_rtc_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
aw_rtc_settime(device_t dev, struct timespec *ts)
{
 struct aw_rtc_softc *sc = device_get_softc(dev);
 struct clocktime ct;
 uint32_t clk, rdate, rtime;


 if (ts->tv_nsec >= HALF_OF_SEC_NS)
  ts->tv_sec++;
 ts->tv_nsec = 0;

 clock_ts_to_ct(ts, &ct);

 if ((ct.year < YEAR_MIN) || (ct.year > YEAR_MAX)) {
  device_printf(dev, "could not set time, year out of range\n");
  return (EINVAL);
 }

 for (clk = 0; RTC_READ(sc, LOSC_CTRL_REG) & LOSC_BUSY_MASK; clk++) {
  if (clk > RTC_TIMEOUT) {
   device_printf(dev, "could not set time, RTC busy\n");
   return (EINVAL);
  }
  DELAY(1);
 }

 RTC_WRITE(sc, sc->conf->rtc_time, 0);

 rdate = SET_DAY_VALUE(ct.day) | SET_MON_VALUE(ct.mon) |
  SET_YEAR_VALUE(ct.year - YEAR_OFFSET) |
  SET_LEAP_VALUE(IS_LEAP_YEAR(ct.year));

 rtime = SET_SEC_VALUE(ct.sec) | SET_MIN_VALUE(ct.min) |
  SET_HOUR_VALUE(ct.hour);

 for (clk = 0; RTC_READ(sc, LOSC_CTRL_REG) & LOSC_BUSY_MASK; clk++) {
  if (clk > RTC_TIMEOUT) {
   device_printf(dev, "could not set date, RTC busy\n");
   return (EINVAL);
  }
  DELAY(1);
 }
 RTC_WRITE(sc, sc->conf->rtc_date, rdate);

 for (clk = 0; RTC_READ(sc, LOSC_CTRL_REG) & LOSC_BUSY_MASK; clk++) {
  if (clk > RTC_TIMEOUT) {
   device_printf(dev, "could not set time, RTC busy\n");
   return (EINVAL);
  }
  DELAY(1);
 }
 RTC_WRITE(sc, sc->conf->rtc_time, rtime);

 DELAY(RTC_TIMEOUT);

 return (0);
}
