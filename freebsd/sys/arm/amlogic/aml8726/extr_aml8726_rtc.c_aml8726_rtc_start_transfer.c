
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aml8726_rtc_softc {int dummy; } ;


 int AML_RTC_0_REG ;
 int AML_RTC_1_REG ;
 int AML_RTC_SCLK ;
 int AML_RTC_SDI ;
 int AML_RTC_SEN ;
 int AML_RTC_SRDY ;
 int CSR_BARRIER (struct aml8726_rtc_softc*,int ) ;
 int CSR_READ_4 (struct aml8726_rtc_softc*,int ) ;
 int CSR_WRITE_4 (struct aml8726_rtc_softc*,int ,int) ;
 int DELAY (int) ;
 int EIO ;

__attribute__((used)) static int
aml8726_rtc_start_transfer(struct aml8726_rtc_softc *sc)
{
 unsigned i;


 CSR_WRITE_4(sc, AML_RTC_0_REG, (CSR_READ_4(sc, AML_RTC_0_REG) &
     ~(AML_RTC_SCLK | AML_RTC_SEN | AML_RTC_SDI)));

 CSR_BARRIER(sc, AML_RTC_0_REG);


 for (i = 40; i; i--) {
  DELAY(5);
  if ( (CSR_READ_4(sc, AML_RTC_1_REG) & AML_RTC_SRDY) )
   break;
 }

 if (i == 0)
  return (EIO);


 CSR_WRITE_4(sc, AML_RTC_0_REG, (CSR_READ_4(sc, AML_RTC_0_REG) |
     AML_RTC_SEN));

 return (0);
}
