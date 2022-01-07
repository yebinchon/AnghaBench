
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bcm2835_rng_softc {int dummy; } ;


 int RNG_INT_MASK ;
 int RNG_INT_OFF_BIT ;
 int bcm2835_rng_read4 (struct bcm2835_rng_softc*,int ) ;
 int bcm2835_rng_write4 (struct bcm2835_rng_softc*,int ,int ) ;

__attribute__((used)) static void
bcm2835_rng_disable_intr(struct bcm2835_rng_softc *sc)
{
 uint32_t mask;


 mask = bcm2835_rng_read4(sc, RNG_INT_MASK);
 mask |= RNG_INT_OFF_BIT;
        bcm2835_rng_write4(sc, RNG_INT_MASK, mask);
}
