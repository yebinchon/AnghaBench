
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ lpi_base; } ;
struct its_dev {TYPE_2__ lpis; } ;
struct its_col {int dummy; } ;
struct TYPE_6__ {struct its_col* col; struct its_dev* its_dev; scalar_t__ pid; } ;
struct its_cmd_desc {TYPE_3__ cmd_desc_inv; int cmd_type; } ;
struct gicv3_its_softc {struct its_col** sc_its_cols; } ;
struct TYPE_4__ {int isrc_cpu; } ;
struct gicv3_its_irqsrc {scalar_t__ gi_irq; TYPE_1__ gi_isrc; } ;
typedef int device_t ;


 int CPU_FFS (int *) ;
 int ITS_CMD_INV ;
 struct gicv3_its_softc* device_get_softc (int ) ;
 int its_cmd_send (int ,struct its_cmd_desc*) ;

__attribute__((used)) static void
its_cmd_inv(device_t dev, struct its_dev *its_dev,
    struct gicv3_its_irqsrc *girq)
{
 struct gicv3_its_softc *sc;
 struct its_cmd_desc desc;
 struct its_col *col;

 sc = device_get_softc(dev);
 col = sc->sc_its_cols[CPU_FFS(&girq->gi_isrc.isrc_cpu) - 1];

 desc.cmd_type = ITS_CMD_INV;

 desc.cmd_desc_inv.pid = girq->gi_irq - its_dev->lpis.lpi_base;
 desc.cmd_desc_inv.its_dev = its_dev;
 desc.cmd_desc_inv.col = col;

 its_cmd_send(dev, &desc);
}
