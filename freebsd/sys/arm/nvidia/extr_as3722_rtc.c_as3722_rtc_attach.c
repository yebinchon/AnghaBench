
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct as3722_softc {int dev; } ;
typedef int phandle_t ;


 int AS3722_RTC_ALARM_WAKEUP_EN ;
 int AS3722_RTC_AM_PM_MODE ;
 int AS3722_RTC_CONTROL ;
 int AS3722_RTC_ON ;
 int ENXIO ;
 int RM1 (struct as3722_softc*,int ,int,int) ;
 int clock_register (int ,int) ;
 int device_printf (int ,char*) ;

int
as3722_rtc_attach(struct as3722_softc *sc, phandle_t node)
{
 int rv;


 rv = RM1(sc, AS3722_RTC_CONTROL,
     AS3722_RTC_ON | AS3722_RTC_ALARM_WAKEUP_EN | AS3722_RTC_AM_PM_MODE,
     AS3722_RTC_ON | AS3722_RTC_ALARM_WAKEUP_EN);
 if (rv < 0) {
  device_printf(sc->dev, "Failed to initialize RTC controller\n");
  return (ENXIO);
 }
 clock_register(sc->dev, 1000000);

 return (0);
}
