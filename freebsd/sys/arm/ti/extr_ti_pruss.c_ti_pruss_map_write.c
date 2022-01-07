
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct ti_pruss_softc {int dummy; } ;


 int ti_pruss_reg_read (struct ti_pruss_softc*,size_t const) ;
 int ti_pruss_reg_write (struct ti_pruss_softc*,size_t const,int) ;

__attribute__((used)) static __inline void
ti_pruss_map_write(struct ti_pruss_softc *sc, uint32_t basereg, uint8_t index, uint8_t content)
{
 const size_t regadr = basereg + index & ~0x03;
 const size_t bitpos = (index & 0x03) * 8;
 uint32_t rmw = ti_pruss_reg_read(sc, regadr);
 rmw = (rmw & ~( 0xF << bitpos)) | ( (content & 0xF) << bitpos);
 ti_pruss_reg_write(sc, regadr, rmw);
}
