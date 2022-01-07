
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aml8726_rtc_softc {int dummy; } ;


 int AML_RTC_0_REG ;
 int AML_RTC_SDI ;
 int CSR_READ_4 (struct aml8726_rtc_softc*,int ) ;
 int CSR_WRITE_4 (struct aml8726_rtc_softc*,int ,int) ;
 int aml8726_rtc_sclk_pulse (struct aml8726_rtc_softc*) ;

__attribute__((used)) static inline void
aml8726_rtc_send_bit(struct aml8726_rtc_softc *sc, unsigned bit)
{

 if (bit) {
  CSR_WRITE_4(sc, AML_RTC_0_REG, (CSR_READ_4(sc, AML_RTC_0_REG) |
      AML_RTC_SDI));
 } else {
  CSR_WRITE_4(sc, AML_RTC_0_REG, (CSR_READ_4(sc, AML_RTC_0_REG) &
      ~AML_RTC_SDI));
 }

 aml8726_rtc_sclk_pulse(sc);
}
