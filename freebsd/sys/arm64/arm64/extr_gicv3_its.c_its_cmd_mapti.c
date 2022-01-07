
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u_int ;
struct its_col {int dummy; } ;
struct TYPE_8__ {scalar_t__ pid; scalar_t__ id; struct its_col* col; TYPE_3__* its_dev; } ;
struct its_cmd_desc {TYPE_4__ cmd_desc_mapvi; int cmd_type; } ;
struct gicv3_its_softc {scalar_t__ sc_irq_base; struct its_col** sc_its_cols; } ;
struct TYPE_5__ {int isrc_cpu; } ;
struct gicv3_its_irqsrc {scalar_t__ gi_irq; TYPE_3__* gi_its_dev; TYPE_1__ gi_isrc; } ;
typedef int device_t ;
struct TYPE_6__ {scalar_t__ lpi_base; } ;
struct TYPE_7__ {TYPE_2__ lpis; } ;


 size_t CPU_FFS (int *) ;
 int ITS_CMD_MAPTI ;
 struct gicv3_its_softc* device_get_softc (int ) ;
 int its_cmd_send (int ,struct its_cmd_desc*) ;

__attribute__((used)) static void
its_cmd_mapti(device_t dev, struct gicv3_its_irqsrc *girq)
{
 struct gicv3_its_softc *sc;
 struct its_cmd_desc desc;
 struct its_col *col;
 u_int col_id;

 sc = device_get_softc(dev);

 col_id = CPU_FFS(&girq->gi_isrc.isrc_cpu) - 1;
 col = sc->sc_its_cols[col_id];

 desc.cmd_type = ITS_CMD_MAPTI;
 desc.cmd_desc_mapvi.its_dev = girq->gi_its_dev;
 desc.cmd_desc_mapvi.col = col;

 desc.cmd_desc_mapvi.id = girq->gi_irq - girq->gi_its_dev->lpis.lpi_base;

 desc.cmd_desc_mapvi.pid = girq->gi_irq + sc->sc_irq_base;

 its_cmd_send(dev, &desc);
}
