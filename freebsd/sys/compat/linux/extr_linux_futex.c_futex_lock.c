
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int shared; } ;
struct futex {TYPE_1__ f_key; int f_refcount; int f_uaddr; } ;


 int FUTEX_ASSERT_UNLOCKED (struct futex*) ;
 int FUTEX_LOCK (struct futex*) ;
 int LINUX_CTR3 (int ,char*,int ,int ,int ) ;
 int sys_futex ;

__attribute__((used)) static inline void
futex_lock(struct futex *f)
{

 LINUX_CTR3(sys_futex, "futex_lock uaddr %p ref %d shared %d",
     f->f_uaddr, f->f_refcount, f->f_key.shared);
 FUTEX_ASSERT_UNLOCKED(f);
 FUTEX_LOCK(f);
}
