
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct bcm_sdhost_softc {int dummy; } ;
typedef int bus_size_t ;


 int RD4 (struct bcm_sdhost_softc*,int) ;

__attribute__((used)) static inline uint8_t
RD1(struct bcm_sdhost_softc *sc, bus_size_t off)
{
 uint32_t val;

 val = RD4(sc, off & ~3);

 return ((val >> (off & 3)*8) & 0xff);
}
