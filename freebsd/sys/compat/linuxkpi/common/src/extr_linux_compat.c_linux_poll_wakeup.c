
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int si_note; } ;
struct linux_file {int f_kqflags; int f_kqlock; TYPE_1__ f_selinfo; } ;


 int KNOTE_LOCKED (int *,int) ;
 int LINUX_KQ_FLAG_NEED_READ ;
 int LINUX_KQ_FLAG_NEED_WRITE ;
 int selwakeup (TYPE_1__*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void
linux_poll_wakeup(struct linux_file *filp)
{

 if (filp == ((void*)0))
  return;

 selwakeup(&filp->f_selinfo);

 spin_lock(&filp->f_kqlock);
 filp->f_kqflags |= LINUX_KQ_FLAG_NEED_READ |
     LINUX_KQ_FLAG_NEED_WRITE;


 KNOTE_LOCKED(&filp->f_selinfo.si_note, 1);
 spin_unlock(&filp->f_kqlock);
}
