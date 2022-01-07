
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int uint32_t ;
struct thread {int td_proc; } ;


 int ENOMEM ;
 int proc_readmem (struct thread*,int ,int ,int *,int) ;

__attribute__((used)) static int
ptrace_read_int(struct thread *td, vm_offset_t addr, uint32_t *v)
{

 if (proc_readmem(td, td->td_proc, addr, v, sizeof(*v)) != sizeof(*v))
  return (ENOMEM);
 return (0);
}
