
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm2835_rng_softc {int sc_underrun; } ;


 int atomic_add_long (int *,int) ;

__attribute__((used)) static __inline void
bcm2835_rng_stat_inc_underrun(struct bcm2835_rng_softc *sc)
{

 atomic_add_long(&sc->sc_underrun, 1);
}
