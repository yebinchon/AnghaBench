
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int idx; int cnt; } ;
struct TYPE_3__ {TYPE_2__ ctl; } ;
struct ti_pruss_irqsc {TYPE_1__ tstamps; } ;
struct thread {int dummy; } ;
struct ctl {int idx; int cnt; } ;
struct cdev {struct ti_pruss_irqsc* si_drv1; } ;


 int ENOMEM ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int devfs_set_cdevpriv (struct ctl*,int ) ;
 struct ctl* malloc (int,int ,int ) ;
 int ti_pruss_privdtor ;

__attribute__((used)) static int
ti_pruss_irq_open(struct cdev *dev, int oflags, int devtype, struct thread *td)
{
 struct ctl* irqs;
 struct ti_pruss_irqsc *sc;
 sc = dev->si_drv1;

 irqs = malloc(sizeof(struct ctl), M_DEVBUF, M_WAITOK);
 if (!irqs)
     return (ENOMEM);

 irqs->cnt = sc->tstamps.ctl.cnt;
 irqs->idx = sc->tstamps.ctl.idx;

 return devfs_set_cdevpriv(irqs, ti_pruss_privdtor);
}
