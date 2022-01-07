
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int si_note; } ;
struct linux_file {int f_kqlock; TYPE_1__ f_selinfo; } ;
struct knote {struct linux_file* kn_hook; } ;


 int knlist_remove (int *,struct knote*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void
linux_file_kqfilter_detach(struct knote *kn)
{
 struct linux_file *filp = kn->kn_hook;

 spin_lock(&filp->f_kqlock);
 knlist_remove(&filp->f_selinfo.si_note, kn, 1);
 spin_unlock(&filp->f_kqlock);
}
