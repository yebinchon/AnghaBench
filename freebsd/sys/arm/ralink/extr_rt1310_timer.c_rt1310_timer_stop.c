
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt1310_timer_softc {int dummy; } ;
struct eventtimer {scalar_t__ et_priv; } ;


 int RT_TIMER_CONTROL ;
 int timer2_write_4 (struct rt1310_timer_softc*,int ,int ) ;

__attribute__((used)) static int
rt1310_timer_stop(struct eventtimer *et)
{
 struct rt1310_timer_softc *sc = (struct rt1310_timer_softc *)et->et_priv;

 timer2_write_4(sc, RT_TIMER_CONTROL, 0);

 return (0);
}
