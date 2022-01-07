
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct a10_aintc_softc {int dummy; } ;


 int SW_INT_IRQ_PENDING_REG (int) ;
 int aintc_read_4 (struct a10_aintc_softc*,int ) ;

__attribute__((used)) static int
a10_pending_irq(struct a10_aintc_softc *sc)
{
 uint32_t value;
 int i, b;

 for (i = 0; i < 3; i++) {
  value = aintc_read_4(sc, SW_INT_IRQ_PENDING_REG(i));
  if (value == 0)
   continue;
  for (b = 0; b < 32; b++)
   if (value & (1 << b)) {
    return (i * 32 + b);
   }
 }

 return (-1);
}
