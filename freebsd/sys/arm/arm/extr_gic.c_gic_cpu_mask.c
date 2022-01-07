
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct arm_gic_softc {int dummy; } ;


 int GICD_ITARGETSR (int) ;
 int gic_d_read_4 (struct arm_gic_softc*,int ) ;

__attribute__((used)) static uint8_t
gic_cpu_mask(struct arm_gic_softc *sc)
{
 uint32_t mask;
 int i;


 for (i = 0; i < 8; i++) {
  mask = gic_d_read_4(sc, GICD_ITARGETSR(4 * i));
  if (mask != 0)
   break;
 }

 if (mask == 0)
  return (1);


 mask |= mask >> 16;
 mask |= mask >> 8;

 return (mask);
}
