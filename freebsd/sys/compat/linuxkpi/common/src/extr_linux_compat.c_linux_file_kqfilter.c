
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct thread {int dummy; } ;
struct TYPE_4__ {int si_note; } ;
struct linux_file {int f_kqflags; int f_kqlock; TYPE_2__ f_selinfo; TYPE_1__* f_op; int f_flags; } ;
struct knote {int kn_filter; struct linux_file* kn_hook; int * kn_fop; } ;
struct file {int f_flag; scalar_t__ f_data; } ;
struct TYPE_3__ {int * poll; } ;


 int EINVAL ;


 int LINUX_KQ_FLAG_HAS_READ ;
 int LINUX_KQ_FLAG_HAS_WRITE ;
 struct thread* curthread ;
 int knlist_add (int *,struct knote*,int) ;
 int linux_dev_kqfiltops_read ;
 int linux_dev_kqfiltops_write ;
 int linux_file_kqfilter_poll (struct linux_file*,int) ;
 int linux_set_current (struct thread*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int
linux_file_kqfilter(struct file *file, struct knote *kn)
{
 struct linux_file *filp;
 struct thread *td;
 int error;

 td = curthread;
 filp = (struct linux_file *)file->f_data;
 filp->f_flags = file->f_flag;
 if (filp->f_op->poll == ((void*)0))
  return (EINVAL);

 spin_lock(&filp->f_kqlock);
 switch (kn->kn_filter) {
 case 129:
  filp->f_kqflags |= LINUX_KQ_FLAG_HAS_READ;
  kn->kn_fop = &linux_dev_kqfiltops_read;
  kn->kn_hook = filp;
  knlist_add(&filp->f_selinfo.si_note, kn, 1);
  error = 0;
  break;
 case 128:
  filp->f_kqflags |= LINUX_KQ_FLAG_HAS_WRITE;
  kn->kn_fop = &linux_dev_kqfiltops_write;
  kn->kn_hook = filp;
  knlist_add(&filp->f_selinfo.si_note, kn, 1);
  error = 0;
  break;
 default:
  error = EINVAL;
  break;
 }
 spin_unlock(&filp->f_kqlock);

 if (error == 0) {
  linux_set_current(td);


  linux_file_kqfilter_poll(filp,
      LINUX_KQ_FLAG_HAS_READ | LINUX_KQ_FLAG_HAS_WRITE);
 }
 return (error);
}
