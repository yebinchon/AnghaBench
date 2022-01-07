
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct knote {int kn_filter; struct eventfd* kn_hook; int * kn_fop; } ;
struct file {scalar_t__ f_type; struct eventfd* f_data; } ;
struct TYPE_2__ {int si_note; } ;
struct eventfd {int efd_lock; TYPE_1__ efd_sel; } ;


 scalar_t__ DTYPE_LINUXEFD ;
 int EINVAL ;


 int eventfd_rfiltops ;
 int eventfd_wfiltops ;
 int knlist_add (int *,struct knote*,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
eventfd_kqfilter(struct file *fp, struct knote *kn)
{
 struct eventfd *efd;

 efd = fp->f_data;
 if (fp->f_type != DTYPE_LINUXEFD || efd == ((void*)0))
  return (EINVAL);

 mtx_lock(&efd->efd_lock);
 switch (kn->kn_filter) {
 case 129:
  kn->kn_fop = &eventfd_rfiltops;
  break;
 case 128:
  kn->kn_fop = &eventfd_wfiltops;
  break;
 default:
  mtx_unlock(&efd->efd_lock);
  return (EINVAL);
 }

 kn->kn_hook = efd;
 knlist_add(&efd->efd_sel.si_note, kn, 1);
 mtx_unlock(&efd->efd_lock);

 return (0);
}
