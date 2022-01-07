
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int pl310_read4 (int ,int) ;
 int pl310_softc ;

__attribute__((used)) static __inline void
pl310_wait_background_op(uint32_t off, uint32_t mask)
{

 while (pl310_read4(pl310_softc, off) & mask)
  continue;
}
