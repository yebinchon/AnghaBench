
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bcm2835_rng_softc {int dummy; } ;


 int RNG_CTRL ;
 int RNG_RBGEN_BIT ;
 int bcm2835_rng_read4 (struct bcm2835_rng_softc*,int ) ;
 int bcm2835_rng_write4 (struct bcm2835_rng_softc*,int ,int ) ;

__attribute__((used)) static void
bcm2835_rng_stop(struct bcm2835_rng_softc *sc)
{
 uint32_t ctrl;


 ctrl = bcm2835_rng_read4(sc, RNG_CTRL);
 ctrl &= ~RNG_RBGEN_BIT;
 bcm2835_rng_write4(sc, RNG_CTRL, ctrl);
}
