
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sp804_timer_softc {scalar_t__ et_enabled; } ;
struct eventtimer {struct sp804_timer_softc* et_priv; } ;


 int SP804_TIMER2_CONTROL ;
 int TIMER_CONTROL_EN ;
 int sp804_timer_tc_read_4 (int ) ;
 int sp804_timer_tc_write_4 (int ,int ) ;

__attribute__((used)) static int
sp804_timer_stop(struct eventtimer *et)
{
 struct sp804_timer_softc *sc = et->et_priv;
 uint32_t reg;

 sc->et_enabled = 0;
 reg = sp804_timer_tc_read_4(SP804_TIMER2_CONTROL);
 reg &= ~(TIMER_CONTROL_EN);
 sp804_timer_tc_write_4(SP804_TIMER2_CONTROL, reg);

 return (0);
}
