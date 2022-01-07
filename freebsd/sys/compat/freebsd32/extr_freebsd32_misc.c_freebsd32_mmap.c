
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct freebsd32_mmap_args {int prot; int pos; int fd; int flags; int len; scalar_t__ addr; } ;


 int PAIR32TO64 (int ,int ) ;
 int PROT_EXEC ;
 int PROT_READ ;
 scalar_t__ i386_read_exec ;
 int kern_mmap (struct thread*,uintptr_t,int ,int,int ,int ,int ) ;
 int off_t ;

int
freebsd32_mmap(struct thread *td, struct freebsd32_mmap_args *uap)
{
 int prot;

 prot = uap->prot;

 if (i386_read_exec && (prot & PROT_READ))
  prot |= PROT_EXEC;


 return (kern_mmap(td, (uintptr_t)uap->addr, uap->len, prot,
     uap->flags, uap->fd, PAIR32TO64(off_t, uap->pos)));
}
