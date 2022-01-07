
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int si_note; } ;
struct ti_pruss_irqsc {TYPE_1__ sc_selinfo; } ;
struct knote {struct ti_pruss_irqsc* kn_hook; } ;


 int knlist_remove (int *,struct knote*,int ) ;

__attribute__((used)) static void
ti_pruss_irq_kqread_detach(struct knote *kn)
{
 struct ti_pruss_irqsc *sc = kn->kn_hook;

 knlist_remove(&sc->sc_selinfo.si_note, kn, 0);
}
