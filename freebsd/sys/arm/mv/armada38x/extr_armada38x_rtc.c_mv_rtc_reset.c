
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv_rtc_softc {int dummy; } ;
typedef int device_t ;


 int DELAY (int) ;
 int RTC_ALARM_1 ;
 int RTC_ALARM_2 ;
 int RTC_CLOCK_CORR ;
 int RTC_IRQ_1_CONFIG ;
 int RTC_IRQ_2_CONFIG ;
 int RTC_NOMINAL_TIMING ;
 int RTC_STATUS ;
 int RTC_STATUS_ALARM1_MASK ;
 int RTC_STATUS_ALARM2_MASK ;
 int RTC_TEST_CONFIG ;
 int RTC_TIME ;
 struct mv_rtc_softc* device_get_softc (int ) ;
 int mv_rtc_reg_write (struct mv_rtc_softc*,int ,int) ;

__attribute__((used)) static void
mv_rtc_reset(device_t dev)
{
 struct mv_rtc_softc *sc;

 sc = device_get_softc(dev);


 mv_rtc_reg_write(sc, RTC_TEST_CONFIG, 0);
 DELAY(500000);


 mv_rtc_reg_write(sc, RTC_TIME, 0);
 DELAY(62);


 mv_rtc_reg_write(sc, RTC_STATUS, (RTC_STATUS_ALARM1_MASK | RTC_STATUS_ALARM2_MASK));
 DELAY(62);


 mv_rtc_reg_write(sc, RTC_IRQ_1_CONFIG, 0);
 mv_rtc_reg_write(sc, RTC_IRQ_2_CONFIG, 0);
 mv_rtc_reg_write(sc, RTC_ALARM_1, 0);
 mv_rtc_reg_write(sc, RTC_ALARM_2, 0);


 mv_rtc_reg_write(sc, RTC_CLOCK_CORR, RTC_NOMINAL_TIMING);


 mv_rtc_reg_write(sc, RTC_TIME, 0);
 DELAY(10);


 mv_rtc_reg_write(sc, RTC_STATUS, (RTC_STATUS_ALARM1_MASK | RTC_STATUS_ALARM2_MASK));
 DELAY(50);
}
