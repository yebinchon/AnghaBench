
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int isrc; } ;
struct aw_nmi_softc {int dev; TYPE_2__* cfg; TYPE_1__ intr; } ;
struct TYPE_6__ {int td_intr_frame; } ;
struct TYPE_5__ {int enable_reg; int pending_reg; } ;


 int FILTER_HANDLED ;
 int NMI_IRQ_ENABLE ;
 scalar_t__ SC_NMI_READ (struct aw_nmi_softc*,int ) ;
 int SC_NMI_WRITE (struct aw_nmi_softc*,int ,int) ;
 TYPE_3__* curthread ;
 int device_printf (int ,char*) ;
 scalar_t__ intr_isrc_dispatch (int *,int ) ;

__attribute__((used)) static int
aw_nmi_intr(void *arg)
{
 struct aw_nmi_softc *sc;

 sc = arg;

 if (SC_NMI_READ(sc, sc->cfg->pending_reg) == 0) {
  device_printf(sc->dev, "Spurious interrupt\n");
  return (FILTER_HANDLED);
 }

 if (intr_isrc_dispatch(&sc->intr.isrc, curthread->td_intr_frame) != 0) {
  SC_NMI_WRITE(sc, sc->cfg->enable_reg, !NMI_IRQ_ENABLE);
  device_printf(sc->dev, "Stray interrupt, NMI disabled\n");
 }

 return (FILTER_HANDLED);
}
