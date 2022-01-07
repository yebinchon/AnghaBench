
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct linux_ioctl_args {int cmd; } ;
struct ioctl_args {int dummy; } ;


 int ENOIOCTL ;



 int SIOCGIFADDR ;
 int SIOCGIFFLAGS ;
 int SIOCSIFADDR ;
 int sys_ioctl (struct thread*,struct ioctl_args*) ;

__attribute__((used)) static int
linux_ioctl_special(struct thread *td, struct linux_ioctl_args *args)
{
 int error;

 switch (args->cmd) {
 case 130:
  args->cmd = SIOCGIFADDR;
  error = sys_ioctl(td, (struct ioctl_args *)args);
  break;
 case 128:
  args->cmd = SIOCSIFADDR;
  error = sys_ioctl(td, (struct ioctl_args *)args);
  break;
 case 129:
  args->cmd = SIOCGIFFLAGS;
  error = sys_ioctl(td, (struct ioctl_args *)args);
  break;
 default:
  error = ENOIOCTL;
 }

 return (error);
}
