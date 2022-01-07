
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cloudabi_sys_mem_unmap_args {int mapping_len; scalar_t__ mapping; } ;


 int kern_munmap (struct thread*,uintptr_t,int ) ;

int
cloudabi_sys_mem_unmap(struct thread *td,
    struct cloudabi_sys_mem_unmap_args *uap)
{

 return (kern_munmap(td, (uintptr_t)uap->mapping, uap->mapping_len));
}
