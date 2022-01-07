
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cloudabi_sys_mem_sync_args {int flags; int mapping_len; scalar_t__ mapping; } ;



 int CLOUDABI_MS_INVALIDATE ;

 int EINVAL ;
 int MS_ASYNC ;
 int MS_INVALIDATE ;
 int MS_SYNC ;
 int kern_msync (struct thread*,uintptr_t,int ,int) ;

int
cloudabi_sys_mem_sync(struct thread *td, struct cloudabi_sys_mem_sync_args *uap)
{
 int flags;


 switch (uap->flags & (129 | 128)) {
 case 129:
  flags = MS_ASYNC;
  break;
 case 128:
  flags = MS_SYNC;
  break;
 default:
  return (EINVAL);
 }
 if ((uap->flags & CLOUDABI_MS_INVALIDATE) != 0)
  flags |= MS_INVALIDATE;

 return (kern_msync(td, (uintptr_t)uap->mapping, uap->mapping_len,
     flags));
}
