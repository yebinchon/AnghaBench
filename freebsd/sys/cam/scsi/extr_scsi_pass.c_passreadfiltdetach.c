
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int si_note; } ;
struct pass_softc {TYPE_1__ read_select; } ;
struct knote {scalar_t__ kn_hook; } ;
struct cam_periph {scalar_t__ softc; } ;


 int knlist_remove (int *,struct knote*,int ) ;

__attribute__((used)) static void
passreadfiltdetach(struct knote *kn)
{
 struct cam_periph *periph;
 struct pass_softc *softc;

 periph = (struct cam_periph *)kn->kn_hook;
 softc = (struct pass_softc *)periph->softc;

 knlist_remove(&softc->read_select.si_note, kn, 0);
}
