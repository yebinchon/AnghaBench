
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct timespec {int dummy; } ;
struct clocktime {scalar_t__ year; scalar_t__ sec; scalar_t__ min; scalar_t__ hour; scalar_t__ day; scalar_t__ mon; } ;
struct as3722_softc {int dev; } ;
typedef int device_t ;


 int AS3722_RTC_SECOND ;
 scalar_t__ AS3722_RTC_START_YEAR ;
 int EINVAL ;
 int as3722_write_buf (struct as3722_softc*,int ,int *,int) ;
 int bin2bcd (scalar_t__) ;
 int clock_ts_to_ct (struct timespec*,struct clocktime*) ;
 struct as3722_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;

int
as3722_rtc_settime(device_t dev, struct timespec *ts)
{
 struct as3722_softc *sc;
 struct clocktime ct;
 uint8_t buf[6];
 int rv;

 sc = device_get_softc(dev);
 clock_ts_to_ct(ts, &ct);

 if (ct.year < AS3722_RTC_START_YEAR)
  return (EINVAL);

 buf[0] = bin2bcd(ct.sec);
 buf[1] = bin2bcd(ct.min);
 buf[2] = bin2bcd(ct.hour);
 buf[3] = bin2bcd(ct.day);
 buf[4] = bin2bcd(ct.mon);
 buf[5] = bin2bcd(ct.year - AS3722_RTC_START_YEAR);

 rv = as3722_write_buf(sc, AS3722_RTC_SECOND, buf, 6);
 if (rv != 0) {
  device_printf(sc->dev, "Failed to write RTC data\n");
  return (rv);
 }
 return (0);
}
