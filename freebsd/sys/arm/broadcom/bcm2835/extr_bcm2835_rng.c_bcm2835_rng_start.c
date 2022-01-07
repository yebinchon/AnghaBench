
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bcm2835_rng_softc {scalar_t__ sc_rbg2x; } ;


 int RND_VAL_WARM_CNT ;
 int RNG_CTRL ;
 int RNG_RBG2X ;
 int RNG_RBGEN_BIT ;
 int RNG_STATUS ;
 int bcm2835_rng_disable_intr (struct bcm2835_rng_softc*) ;
 int bcm2835_rng_read4 (struct bcm2835_rng_softc*,int ) ;
 int bcm2835_rng_write4 (struct bcm2835_rng_softc*,int ,int ) ;

__attribute__((used)) static void
bcm2835_rng_start(struct bcm2835_rng_softc *sc)
{
 uint32_t ctrl;


 bcm2835_rng_disable_intr(sc);


 bcm2835_rng_write4(sc, RNG_STATUS, RND_VAL_WARM_CNT);


 ctrl = bcm2835_rng_read4(sc, RNG_CTRL);
 ctrl |= RNG_RBGEN_BIT;
 if (sc->sc_rbg2x)
  ctrl |= RNG_RBG2X;
 bcm2835_rng_write4(sc, RNG_CTRL, ctrl);
}
