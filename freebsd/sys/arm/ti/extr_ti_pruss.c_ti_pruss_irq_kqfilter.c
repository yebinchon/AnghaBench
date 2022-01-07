
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int si_note; } ;
struct ti_pruss_irqsc {TYPE_1__ sc_selinfo; } ;
struct knote {int kn_filter; int * kn_fop; struct ti_pruss_irqsc* kn_hook; } ;
struct cdev {struct ti_pruss_irqsc* si_drv1; } ;


 int EINVAL ;

 int knlist_add (int *,struct knote*,int ) ;
 int ti_pruss_kq_read ;

__attribute__((used)) static int
ti_pruss_irq_kqfilter(struct cdev *cdev, struct knote *kn)
{
 struct ti_pruss_irqsc *sc = cdev->si_drv1;

 switch (kn->kn_filter) {
 case 128:
  kn->kn_hook = sc;
  kn->kn_fop = &ti_pruss_kq_read;
  knlist_add(&sc->sc_selinfo.si_note, kn, 0);
  break;
 default:
  return (EINVAL);
 }

 return (0);
}
