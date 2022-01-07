
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct linux_ioctl_args {int dummy; } ;


 int ENOTTY ;

__attribute__((used)) static int
linux_ioctl_vfat(struct thread *td, struct linux_ioctl_args *args)
{

 return (ENOTTY);
}
