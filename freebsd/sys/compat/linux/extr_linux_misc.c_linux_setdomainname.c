
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct linux_setdomainname_args {int len; int name; } ;


 int CTL_KERN ;
 int KERN_NISDOMAINNAME ;
 int userland_sysctl (struct thread*,int*,int,int ,int ,int ,int ,int ,int ,int ) ;

int
linux_setdomainname(struct thread *td, struct linux_setdomainname_args *args)
{
 int name[2];

 name[0] = CTL_KERN;
 name[1] = KERN_NISDOMAINNAME;
 return (userland_sysctl(td, name, 2, 0, 0, 0, args->name,
     args->len, 0, 0));
}
