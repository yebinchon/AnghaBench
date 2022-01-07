
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timecounter {scalar_t__ tc_priv; } ;
struct aml8726_timer_softc {int dummy; } ;


 int AML_TIMER_E_REG ;
 int CSR_READ_4 (struct aml8726_timer_softc*,int ) ;

__attribute__((used)) static unsigned
aml8726_get_timecount(struct timecounter *tc)
{
 struct aml8726_timer_softc *sc =
     (struct aml8726_timer_softc *)tc->tc_priv;

 return CSR_READ_4(sc, AML_TIMER_E_REG);
}
