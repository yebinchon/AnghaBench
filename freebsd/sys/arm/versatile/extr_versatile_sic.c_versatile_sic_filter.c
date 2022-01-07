
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct versatile_sic_softc {int dev; TYPE_1__* isrcs; } ;
struct intr_irqsrc {int dummy; } ;
struct TYPE_4__ {int td_intr_frame; } ;
struct TYPE_3__ {struct intr_irqsrc isrc; } ;


 int FILTER_HANDLED ;
 int SIC_LOCK (struct versatile_sic_softc*) ;
 int SIC_READ_4 (struct versatile_sic_softc*,int ) ;
 int SIC_STATUS ;
 int SIC_UNLOCK (struct versatile_sic_softc*) ;
 TYPE_2__* curthread ;
 int device_printf (int ,char*,int) ;
 scalar_t__ intr_isrc_dispatch (struct intr_irqsrc*,int ) ;
 int versatile_sic_disable_intr (int ,struct intr_irqsrc*) ;
 int versatile_sic_post_filter (int ,struct intr_irqsrc*) ;

__attribute__((used)) static int
versatile_sic_filter(void *arg)
{
 struct versatile_sic_softc *sc;
 struct intr_irqsrc *isrc;
 uint32_t i, interrupts;

 sc = arg;
 SIC_LOCK(sc);
 interrupts = SIC_READ_4(sc, SIC_STATUS);
 SIC_UNLOCK(sc);
 for (i = 0; interrupts != 0; i++, interrupts >>= 1) {
  if ((interrupts & 0x1) == 0)
   continue;
  isrc = &sc->isrcs[i].isrc;
  if (intr_isrc_dispatch(isrc, curthread->td_intr_frame) != 0) {
   versatile_sic_disable_intr(sc->dev, isrc);
   versatile_sic_post_filter(sc->dev, isrc);
   device_printf(sc->dev, "Stray irq %u disabled\n", i);
  }
 }

 return (FILTER_HANDLED);
}
