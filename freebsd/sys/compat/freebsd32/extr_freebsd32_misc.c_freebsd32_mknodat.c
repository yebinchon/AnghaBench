
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct freebsd32_mknodat_args {int dev; int mode; int path; int fd; } ;


 int PAIR32TO64 (int ,int ) ;
 int UIO_USERSPACE ;
 int dev_t ;
 int kern_mknodat (struct thread*,int ,int ,int ,int ,int ) ;

int
freebsd32_mknodat(struct thread *td, struct freebsd32_mknodat_args *uap)
{

 return (kern_mknodat(td, uap->fd, uap->path, UIO_USERSPACE,
     uap->mode, PAIR32TO64(dev_t, uap->dev)));
}
