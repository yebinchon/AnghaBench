
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef size_t u_int ;
struct trapframe {int dummy; } ;
struct mv_ap806_sei_softc {int dev; struct mv_ap806_sei_irqsrc* isrcs; } ;
struct mv_ap806_sei_irqsrc {int isrc; } ;
struct TYPE_2__ {struct trapframe* td_intr_frame; } ;


 int FILTER_HANDLED ;
 int GICP_SECR0 ;
 int GICP_SECR1 ;
 int RD4 (struct mv_ap806_sei_softc*,int ) ;
 TYPE_1__* curthread ;
 int device_printf (int ,char*,size_t) ;
 size_t ffsll (int) ;
 scalar_t__ intr_isrc_dispatch (int *,struct trapframe*) ;
 int mv_ap806_sei_isrc_eoi (struct mv_ap806_sei_softc*,struct mv_ap806_sei_irqsrc*) ;
 int mv_ap806_sei_isrc_mask (struct mv_ap806_sei_softc*,struct mv_ap806_sei_irqsrc*,int ) ;

__attribute__((used)) static int
mv_ap806_sei_intr(void *arg)
{
 struct mv_ap806_sei_softc *sc;
 struct mv_ap806_sei_irqsrc *sirq;
 struct trapframe *tf;
 uint64_t cause;
 u_int irq;

 sc = (struct mv_ap806_sei_softc *)arg;
 tf = curthread->td_intr_frame;
 while (1) {
  cause = RD4(sc, GICP_SECR1);
  cause <<= 32;
  cause |= RD4(sc, GICP_SECR0);

  irq = ffsll(cause);
  if (irq == 0) break;
  irq--;
  sirq = &sc->isrcs[irq];
  if (intr_isrc_dispatch(&sirq->isrc, tf) != 0) {
   mv_ap806_sei_isrc_mask(sc, sirq, 0);
   mv_ap806_sei_isrc_eoi(sc, sirq);
   device_printf(sc->dev,
       "Stray irq %u disabled\n", irq);
  }
 }

 return (FILTER_HANDLED);
}
