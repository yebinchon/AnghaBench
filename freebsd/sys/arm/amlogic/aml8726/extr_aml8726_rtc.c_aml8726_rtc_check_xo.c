
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct aml8726_rtc_softc {int dummy; } ;


 int AML_RTC_2_REG ;
 int AML_RTC_3_REG ;
 int AML_RTC_MSR_CA ;
 int CSR_READ_4 (struct aml8726_rtc_softc*,int ) ;
 int CSR_WRITE_4 (struct aml8726_rtc_softc*,int ,int) ;
 int DELAY (int) ;
 int EINVAL ;

__attribute__((used)) static int
aml8726_rtc_check_xo(struct aml8726_rtc_softc *sc)
{
 uint32_t now, previous;
 int i;
 CSR_WRITE_4(sc, AML_RTC_3_REG, (CSR_READ_4(sc, AML_RTC_3_REG) |
     AML_RTC_MSR_CA));

 previous = CSR_READ_4(sc, AML_RTC_2_REG);

 for (i = 0; i < 4; i++) {
  DELAY(50);
  now = CSR_READ_4(sc, AML_RTC_2_REG);
  if (now != previous)
   break;
 }

 CSR_WRITE_4(sc, AML_RTC_3_REG, (CSR_READ_4(sc, AML_RTC_3_REG) &
     ~AML_RTC_MSR_CA));

 if (now == previous)
  return (EINVAL);

 return (0);
}
