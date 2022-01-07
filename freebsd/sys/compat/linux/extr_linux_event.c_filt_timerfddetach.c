
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int si_note; } ;
struct timerfd {int tfd_lock; TYPE_1__ tfd_sel; } ;
struct knote {struct timerfd* kn_hook; } ;


 int knlist_remove (int *,struct knote*,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
filt_timerfddetach(struct knote *kn)
{
 struct timerfd *tfd = kn->kn_hook;

 mtx_lock(&tfd->tfd_lock);
 knlist_remove(&tfd->tfd_sel.si_note, kn, 1);
 mtx_unlock(&tfd->tfd_lock);
}
