
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct aml8726_rng_softc {int ticks; int co; } ;
typedef int rn ;


 int AML_RNG_0_REG ;
 int AML_RNG_1_REG ;
 int CSR_READ_4 (struct aml8726_rng_softc*,int ) ;
 int RANDOM_PURE_AML8726 ;
 int callout_reset (int *,int ,void (*) (void*),struct aml8726_rng_softc*) ;
 int random_harvest (int *,int,int ) ;

__attribute__((used)) static void
aml8726_rng_harvest(void *arg)
{
 struct aml8726_rng_softc *sc = arg;
 uint32_t rn[2];

 rn[0] = CSR_READ_4(sc, AML_RNG_0_REG);
 rn[1] = CSR_READ_4(sc, AML_RNG_1_REG);

 random_harvest(rn, sizeof(rn), RANDOM_PURE_AML8726);

 callout_reset(&sc->co, sc->ticks, aml8726_rng_harvest, sc);
}
