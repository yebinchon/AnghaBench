
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct knote {struct eventfd* kn_hook; } ;
struct TYPE_2__ {int si_note; } ;
struct eventfd {int efd_lock; TYPE_1__ efd_sel; } ;


 int knlist_remove (int *,struct knote*,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
filt_eventfddetach(struct knote *kn)
{
 struct eventfd *efd = kn->kn_hook;

 mtx_lock(&efd->efd_lock);
 knlist_remove(&efd->efd_sel.si_note, kn, 1);
 mtx_unlock(&efd->efd_lock);
}
