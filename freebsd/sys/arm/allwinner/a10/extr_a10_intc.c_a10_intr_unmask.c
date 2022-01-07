
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
struct a10_aintc_softc {int mtx; } ;


 int SW_INT_ENABLE_REG (int) ;
 int SW_INT_MASK_REG (int) ;
 int aintc_read_4 (struct a10_aintc_softc*,int ) ;
 int aintc_write_4 (struct a10_aintc_softc*,int ,int) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;

__attribute__((used)) static void
a10_intr_unmask(struct a10_aintc_softc *sc, u_int irq)
{
 uint32_t bit, block, value;

 bit = (irq % 32);
 block = (irq / 32);

 mtx_lock_spin(&sc->mtx);
 value = aintc_read_4(sc, SW_INT_ENABLE_REG(block));
 value |= (1 << bit);
 aintc_write_4(sc, SW_INT_ENABLE_REG(block), value);

 value = aintc_read_4(sc, SW_INT_MASK_REG(block));
 value &= ~(1 << bit);
 aintc_write_4(sc, SW_INT_MASK_REG(block), value);
 mtx_unlock_spin(&sc->mtx);
}
