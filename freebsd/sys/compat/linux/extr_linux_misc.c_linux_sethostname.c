
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct linux_sethostname_args {int len; int hostname; } ;


 int CTL_KERN ;
 int KERN_HOSTNAME ;
 int userland_sysctl (struct thread*,int*,int,int ,int ,int ,int ,int ,int ,int ) ;

int
linux_sethostname(struct thread *td, struct linux_sethostname_args *args)
{
 int name[2];

 name[0] = CTL_KERN;
 name[1] = KERN_HOSTNAME;
 return (userland_sysctl(td, name, 2, 0, 0, 0, args->hostname,
     args->len, 0, 0));
}
