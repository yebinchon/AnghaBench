
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int si_note; } ;
struct pass_softc {TYPE_1__ read_select; } ;
struct knote {int * kn_fop; scalar_t__ kn_hook; } ;
struct cdev {scalar_t__ si_drv1; } ;
struct cam_periph {scalar_t__ softc; } ;
typedef scalar_t__ caddr_t ;


 int knlist_add (int *,struct knote*,int ) ;
 int passread_filtops ;

__attribute__((used)) static int
passkqfilter(struct cdev *dev, struct knote *kn)
{
 struct cam_periph *periph;
 struct pass_softc *softc;

 periph = (struct cam_periph *)dev->si_drv1;
 softc = (struct pass_softc *)periph->softc;

 kn->kn_hook = (caddr_t)periph;
 kn->kn_fop = &passread_filtops;
 knlist_add(&softc->read_select.si_note, kn, 0);

 return (0);
}
