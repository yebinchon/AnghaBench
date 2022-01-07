
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eventtimer {scalar_t__ et_priv; } ;
struct aml8726_timer_softc {int dummy; } ;


 int AML_TIMER_A_EN ;
 int AML_TIMER_LOCK (struct aml8726_timer_softc*) ;
 int AML_TIMER_MUX_REG ;
 int AML_TIMER_UNLOCK (struct aml8726_timer_softc*) ;
 int CSR_READ_4 (struct aml8726_timer_softc*,int ) ;
 int CSR_WRITE_4 (struct aml8726_timer_softc*,int ,int) ;

__attribute__((used)) static int
aml8726_timer_stop(struct eventtimer *et)
{
 struct aml8726_timer_softc *sc =
     (struct aml8726_timer_softc *)et->et_priv;

 AML_TIMER_LOCK(sc);

 CSR_WRITE_4(sc, AML_TIMER_MUX_REG,
     (CSR_READ_4(sc, AML_TIMER_MUX_REG) & ~AML_TIMER_A_EN));

 AML_TIMER_UNLOCK(sc);

 return (0);
}
