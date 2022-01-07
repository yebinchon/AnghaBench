
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {uintptr_t* td_retval; } ;
struct linux_mremap_args {int flags; int addr; uintptr_t new_len; uintptr_t old_len; } ;


 int EINVAL ;
 int ENOMEM ;
 int LINUX_MREMAP_FIXED ;
 int LINUX_MREMAP_MAYMOVE ;
 int PAGE_MASK ;
 int kern_munmap (struct thread*,uintptr_t,size_t) ;
 void* round_page (uintptr_t) ;

int
linux_mremap(struct thread *td, struct linux_mremap_args *args)
{
 uintptr_t addr;
 size_t len;
 int error = 0;

 if (args->flags & ~(LINUX_MREMAP_FIXED | LINUX_MREMAP_MAYMOVE)) {
  td->td_retval[0] = 0;
  return (EINVAL);
 }





 if (args->addr & PAGE_MASK) {
  td->td_retval[0] = 0;
  return (EINVAL);
 }

 args->new_len = round_page(args->new_len);
 args->old_len = round_page(args->old_len);

 if (args->new_len > args->old_len) {
  td->td_retval[0] = 0;
  return (ENOMEM);
 }

 if (args->new_len < args->old_len) {
  addr = args->addr + args->new_len;
  len = args->old_len - args->new_len;
  error = kern_munmap(td, addr, len);
 }

 td->td_retval[0] = error ? 0 : (uintptr_t)args->addr;
 return (error);
}
