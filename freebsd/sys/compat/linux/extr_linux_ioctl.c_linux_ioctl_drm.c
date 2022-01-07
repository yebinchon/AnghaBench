
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct linux_ioctl_args {int cmd; } ;
struct ioctl_args {int dummy; } ;


 int SETDIR (int ) ;
 int sys_ioctl (struct thread*,struct ioctl_args*) ;

__attribute__((used)) static int
linux_ioctl_drm(struct thread *td, struct linux_ioctl_args *args)
{
 args->cmd = SETDIR(args->cmd);
 return (sys_ioctl(td, (struct ioctl_args *)args));
}
