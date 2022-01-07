
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct a10_aintc_softc {int mtx; } ;


 int SW_INT_IRQNO_ENMI ;
 int SW_INT_IRQ_PENDING_REG (int ) ;
 int aintc_write_4 (struct a10_aintc_softc*,int ,int) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;

__attribute__((used)) static __inline void
a10_intr_eoi(struct a10_aintc_softc *sc, u_int irq)
{

 if (irq != SW_INT_IRQNO_ENMI)
  return;
 mtx_lock_spin(&sc->mtx);
 aintc_write_4(sc, SW_INT_IRQ_PENDING_REG(0),
     (1 << SW_INT_IRQNO_ENMI));
 mtx_unlock_spin(&sc->mtx);
}
