
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct freebsd32_truncate_args {int length; int path; } ;


 int PAIR32TO64 (int ,int ) ;
 int UIO_USERSPACE ;
 int kern_truncate (struct thread*,int ,int ,int ) ;
 int off_t ;

int
freebsd32_truncate(struct thread *td, struct freebsd32_truncate_args *uap)
{

 return (kern_truncate(td, uap->path, UIO_USERSPACE,
     PAIR32TO64(off_t, uap->length)));
}
