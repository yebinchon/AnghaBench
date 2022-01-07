
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int si_note; } ;
struct targ_softc {TYPE_1__ read_select; } ;
struct knote {scalar_t__ kn_hook; } ;


 int knlist_remove (int *,struct knote*,int ) ;

__attribute__((used)) static void
targreadfiltdetach(struct knote *kn)
{
 struct targ_softc *softc;

 softc = (struct targ_softc *)kn->kn_hook;
 knlist_remove(&softc->read_select.si_note, kn, 0);
}
