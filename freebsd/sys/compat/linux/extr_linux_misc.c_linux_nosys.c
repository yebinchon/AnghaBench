
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct nosys_args {int dummy; } ;


 int ENOSYS ;

int
linux_nosys(struct thread *td, struct nosys_args *ignore)
{

 return (ENOSYS);
}
