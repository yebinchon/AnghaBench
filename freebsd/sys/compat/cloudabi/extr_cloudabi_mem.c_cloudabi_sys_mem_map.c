
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cloudabi_sys_mem_map_args {int flags; int off; int fd; int len; scalar_t__ addr; int prot; } ;


 int CLOUDABI_MAP_ANON ;
 int CLOUDABI_MAP_FIXED ;
 int CLOUDABI_MAP_PRIVATE ;
 int CLOUDABI_MAP_SHARED ;
 int MAP_ANON ;
 int MAP_FIXED ;
 int MAP_PRIVATE ;
 int MAP_SHARED ;
 int convert_mprot (int ,int*) ;
 int kern_mmap (struct thread*,uintptr_t,int ,int,int,int ,int ) ;

int
cloudabi_sys_mem_map(struct thread *td, struct cloudabi_sys_mem_map_args *uap)
{
 int error, flags, prot;


 flags = 0;
 if (uap->flags & CLOUDABI_MAP_ANON)
  flags |= MAP_ANON;
 if (uap->flags & CLOUDABI_MAP_FIXED)
  flags |= MAP_FIXED;
 if (uap->flags & CLOUDABI_MAP_PRIVATE)
  flags |= MAP_PRIVATE;
 if (uap->flags & CLOUDABI_MAP_SHARED)
  flags |= MAP_SHARED;


 error = convert_mprot(uap->prot, &prot);
 if (error != 0)
  return (error);

 return (kern_mmap(td, (uintptr_t)uap->addr, uap->len, prot, flags,
     uap->fd, uap->off));
}
