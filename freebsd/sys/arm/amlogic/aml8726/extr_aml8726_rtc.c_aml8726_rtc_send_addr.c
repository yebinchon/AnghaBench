
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u_char ;
struct aml8726_rtc_softc {int dummy; } ;


 int AML_RTC_0_REG ;
 int AML_RTC_SEN ;
 int CSR_READ_4 (struct aml8726_rtc_softc*,int ) ;
 int CSR_WRITE_4 (struct aml8726_rtc_softc*,int ,int) ;
 int aml8726_rtc_send_bit (struct aml8726_rtc_softc*,unsigned int) ;

__attribute__((used)) static inline void
aml8726_rtc_send_addr(struct aml8726_rtc_softc *sc, u_char addr)
{
 unsigned mask;

 for (mask = 1 << 3; mask; mask >>= 1) {
  if (mask == 1) {

   CSR_WRITE_4(sc, AML_RTC_0_REG,
       (CSR_READ_4(sc, AML_RTC_0_REG) & ~AML_RTC_SEN));
  }
  aml8726_rtc_send_bit(sc, (addr & mask));
 }
}
