
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv_rtc_softc {int * res; } ;


 int RTC_BRIDGE_TIMING_CTRL ;
 int RTC_READ_OUTPUT_DELAY_MASK ;
 int RTC_READ_OUTPUT_DELAY_MAX ;
 int RTC_READ_OUTPUT_DELAY_SHIFT ;
 size_t RTC_SOC_RES ;
 int RTC_WRCLK_PERIOD_MASK ;
 int RTC_WRCLK_PERIOD_MAX ;
 int RTC_WRCLK_PERIOD_SHIFT ;
 int bus_read_4 (int ,int ) ;
 int bus_write_4 (int ,int ,int) ;

__attribute__((used)) static inline void
mv_rtc_configure_bus(struct mv_rtc_softc *sc)
{
 int val;

 val = bus_read_4(sc->res[RTC_SOC_RES], RTC_BRIDGE_TIMING_CTRL);
 val &= ~(RTC_WRCLK_PERIOD_MASK | RTC_READ_OUTPUT_DELAY_MASK);
 val |= RTC_WRCLK_PERIOD_MAX << RTC_WRCLK_PERIOD_SHIFT;
 val |= RTC_READ_OUTPUT_DELAY_MAX << RTC_READ_OUTPUT_DELAY_SHIFT;
 bus_write_4(sc->res[RTC_SOC_RES], RTC_BRIDGE_TIMING_CTRL, val);
}
