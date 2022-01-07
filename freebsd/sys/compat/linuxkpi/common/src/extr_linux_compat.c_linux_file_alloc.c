
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int si_note; } ;
struct linux_file {int f_count; int f_kqlock; TYPE_1__ f_selinfo; } ;


 int GFP_KERNEL ;
 int knlist_init (int *,int *,int ,int ,int ,int ) ;
 struct linux_file* kzalloc (int,int ) ;
 int linux_kq_lock ;
 int linux_kq_lock_owned ;
 int linux_kq_lock_unowned ;
 int linux_kq_unlock ;
 int spin_lock_init (int *) ;

struct linux_file *
linux_file_alloc(void)
{
 struct linux_file *filp;

 filp = kzalloc(sizeof(*filp), GFP_KERNEL);


 filp->f_count = 1;


 spin_lock_init(&filp->f_kqlock);
 knlist_init(&filp->f_selinfo.si_note, &filp->f_kqlock,
     linux_kq_lock, linux_kq_unlock,
     linux_kq_lock_owned, linux_kq_lock_unowned);

 return (filp);
}
