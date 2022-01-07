
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cloudabi_sys_mem_advise_args {int advice; int mapping_len; scalar_t__ mapping; } ;







 int EINVAL ;
 int MADV_DONTNEED ;
 int MADV_NORMAL ;
 int MADV_RANDOM ;
 int MADV_SEQUENTIAL ;
 int MADV_WILLNEED ;
 int kern_madvise (struct thread*,uintptr_t,int ,int) ;

int
cloudabi_sys_mem_advise(struct thread *td,
    struct cloudabi_sys_mem_advise_args *uap)
{
 int behav;

 switch (uap->advice) {
 case 132:
  behav = MADV_DONTNEED;
  break;
 case 131:
  behav = MADV_NORMAL;
  break;
 case 130:
  behav = MADV_RANDOM;
  break;
 case 129:
  behav = MADV_SEQUENTIAL;
  break;
 case 128:
  behav = MADV_WILLNEED;
  break;
 default:
  return (EINVAL);
 }

 return (kern_madvise(td, (uintptr_t)uap->mapping, uap->mapping_len,
     behav));
}
