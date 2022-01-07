
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int si_note; } ;
struct targ_softc {TYPE_1__ read_select; } ;
struct knote {int * kn_fop; scalar_t__ kn_hook; } ;
struct cdev {int dummy; } ;
typedef scalar_t__ caddr_t ;


 int devfs_get_cdevpriv (void**) ;
 int knlist_add (int *,struct knote*,int ) ;
 int targread_filtops ;

__attribute__((used)) static int
targkqfilter(struct cdev *dev, struct knote *kn)
{
 struct targ_softc *softc;

 devfs_get_cdevpriv((void **)&softc);
 kn->kn_hook = (caddr_t)softc;
 kn->kn_fop = &targread_filtops;
 knlist_add(&softc->read_select.si_note, kn, 0);
 return (0);
}
