
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct freebsd32_ftruncate_args {int length; int fd; } ;


 int PAIR32TO64 (int ,int ) ;
 int kern_ftruncate (struct thread*,int ,int ) ;
 int off_t ;

int
freebsd32_ftruncate(struct thread *td, struct freebsd32_ftruncate_args *uap)
{

 return (kern_ftruncate(td, uap->fd, PAIR32TO64(off_t, uap->length)));
}
