
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct its_col {int dummy; } ;
struct TYPE_6__ {scalar_t__ id; struct its_col* col; TYPE_4__* its_dev; } ;
struct its_cmd_desc {TYPE_2__ cmd_desc_movi; int cmd_type; } ;
struct gicv3_its_softc {struct its_col** sc_its_cols; } ;
struct TYPE_5__ {int isrc_cpu; } ;
struct gicv3_its_irqsrc {TYPE_4__* gi_its_dev; scalar_t__ gi_irq; TYPE_1__ gi_isrc; } ;
typedef int device_t ;
struct TYPE_7__ {scalar_t__ lpi_base; } ;
struct TYPE_8__ {TYPE_3__ lpis; } ;


 int CPU_FFS (int *) ;
 int ITS_CMD_MOVI ;
 struct gicv3_its_softc* device_get_softc (int ) ;
 int its_cmd_send (int ,struct its_cmd_desc*) ;

__attribute__((used)) static void
its_cmd_movi(device_t dev, struct gicv3_its_irqsrc *girq)
{
 struct gicv3_its_softc *sc;
 struct its_cmd_desc desc;
 struct its_col *col;

 sc = device_get_softc(dev);
 col = sc->sc_its_cols[CPU_FFS(&girq->gi_isrc.isrc_cpu) - 1];

 desc.cmd_type = ITS_CMD_MOVI;
 desc.cmd_desc_movi.its_dev = girq->gi_its_dev;
 desc.cmd_desc_movi.col = col;
 desc.cmd_desc_movi.id = girq->gi_irq - girq->gi_its_dev->lpis.lpi_base;

 its_cmd_send(dev, &desc);
}
