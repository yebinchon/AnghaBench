
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aml8726_rtc_softc {int dummy; } ;


 int AML_RTC_0_REG ;
 int AML_RTC_SCLK ;
 int CSR_BARRIER (struct aml8726_rtc_softc*,int ) ;
 int CSR_READ_4 (struct aml8726_rtc_softc*,int ) ;
 int CSR_WRITE_4 (struct aml8726_rtc_softc*,int ,int) ;
 int DELAY (int) ;

__attribute__((used)) static inline void
aml8726_rtc_sclk_pulse(struct aml8726_rtc_softc *sc)
{

 DELAY(5);

 CSR_WRITE_4(sc, AML_RTC_0_REG, (CSR_READ_4(sc, AML_RTC_0_REG) |
     AML_RTC_SCLK));

 CSR_BARRIER(sc, AML_RTC_0_REG);

 DELAY(5);

 CSR_WRITE_4(sc, AML_RTC_0_REG, (CSR_READ_4(sc, AML_RTC_0_REG) &
     ~AML_RTC_SCLK));

 CSR_BARRIER(sc, AML_RTC_0_REG);
}
