
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;
struct aml8726_rtc_softc {int dummy; } ;


 int aml8726_rtc_send_bit (struct aml8726_rtc_softc*,unsigned int) ;

__attribute__((used)) static inline void
aml8726_rtc_send_data(struct aml8726_rtc_softc *sc, uint32_t data)
{
 unsigned mask;

 for (mask = 1U << 31; mask; mask >>= 1)
  aml8726_rtc_send_bit(sc, (data & mask));
}
