
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct timespec {int tv_nsec; int tv_sec; } ;
struct aml8726_rtc_softc {int dummy; } ;
typedef int device_t ;


 int AML_RTC_LOCK (struct aml8726_rtc_softc*) ;
 int AML_RTC_TIME_SREG ;
 int AML_RTC_UNLOCK (struct aml8726_rtc_softc*) ;
 int aml8726_rtc_sreg_write (struct aml8726_rtc_softc*,int ,int ) ;
 struct aml8726_rtc_softc* device_get_softc (int ) ;

__attribute__((used)) static int
aml8726_rtc_settime(device_t dev, struct timespec *ts)
{
 struct aml8726_rtc_softc *sc = device_get_softc(dev);
 uint32_t sec;
 int error;

 sec = ts->tv_sec;


 if (ts->tv_nsec >= 500000000)
  sec++;

 AML_RTC_LOCK(sc);

 error = aml8726_rtc_sreg_write(sc, AML_RTC_TIME_SREG, sec);

 AML_RTC_UNLOCK(sc);

 return (error);
}
