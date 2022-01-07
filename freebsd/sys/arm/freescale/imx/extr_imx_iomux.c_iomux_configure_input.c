
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef unsigned int u_int ;
struct iomux_softc {int dummy; } ;


 unsigned int RD4 (struct iomux_softc*,scalar_t__) ;
 int WR4 (struct iomux_softc*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
iomux_configure_input(struct iomux_softc *sc, uint32_t reg, uint32_t val)
{
 u_int select, mask, shift, width;


 if (reg == 0 && val == 0)
  return;
 if ((val & 0xff000000) == 0xff000000) {
  select = val & 0x000000ff;
  width = (val & 0x0000ff00) >> 8;
  shift = (val & 0x00ff0000) >> 16;
  mask = ((1u << width) - 1) << shift;
  val = (RD4(sc, reg) & ~mask) | (select << shift);
 }
 WR4(sc, reg, val);
}
