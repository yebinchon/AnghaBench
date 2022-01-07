
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct reboot_args {int opt; } ;
struct linux_reboot_args {scalar_t__ magic1; int magic2; int cmd; } ;


 int EINVAL ;
 int PRIV_REBOOT ;
 int RB_HALT ;
 int RB_POWEROFF ;



 scalar_t__ REBOOT_MAGIC1 ;






 int priv_check (struct thread*,int ) ;
 int sys_reboot (struct thread*,struct reboot_args*) ;

int
linux_reboot(struct thread *td, struct linux_reboot_args *args)
{
 struct reboot_args bsd_args;

 if (args->magic1 != REBOOT_MAGIC1)
  return (EINVAL);

 switch (args->magic2) {
 case 133:
 case 132:
 case 131:
  break;
 default:
  return (EINVAL);
 }

 switch (args->cmd) {
 case 135:
 case 136:
  return (priv_check(td, PRIV_REBOOT));
 case 134:
  bsd_args.opt = RB_HALT;
  break;
 case 129:
 case 128:
  bsd_args.opt = 0;
  break;
 case 130:
  bsd_args.opt = RB_POWEROFF;
  break;
 default:
  return (EINVAL);
 }
 return (sys_reboot(td, &bsd_args));
}
