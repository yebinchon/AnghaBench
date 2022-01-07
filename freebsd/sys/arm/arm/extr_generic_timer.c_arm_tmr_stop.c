
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eventtimer {scalar_t__ et_priv; } ;
struct arm_tmr_softc {int physical; } ;


 int arm_tmr_disable (int ) ;

__attribute__((used)) static int
arm_tmr_stop(struct eventtimer *et)
{
 struct arm_tmr_softc *sc;

 sc = (struct arm_tmr_softc *)et->et_priv;
 arm_tmr_disable(sc->physical);

 return (0);
}
