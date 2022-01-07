
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ cnt; } ;
struct TYPE_4__ {TYPE_1__ ctl; } ;
struct ti_pruss_irqsc {int sc_selinfo; TYPE_2__ tstamps; } ;
struct thread {int dummy; } ;
struct ctl {scalar_t__ cnt; } ;
struct cdev {struct ti_pruss_irqsc* si_drv1; } ;


 int POLLIN ;
 int POLLRDNORM ;
 int devfs_get_cdevpriv (void**) ;
 int selrecord (struct thread*,int *) ;

__attribute__((used)) static int
ti_pruss_irq_poll(struct cdev *dev, int events, struct thread *td)
{
 struct ctl* irqs;
 struct ti_pruss_irqsc *sc;
 sc = dev->si_drv1;

 devfs_get_cdevpriv((void**)&irqs);

 if (events & (POLLIN | POLLRDNORM)) {
  if (sc->tstamps.ctl.cnt != irqs->cnt)
   return events & (POLLIN | POLLRDNORM);
  else
   selrecord(td, &sc->sc_selinfo);
 }
 return 0;
}
