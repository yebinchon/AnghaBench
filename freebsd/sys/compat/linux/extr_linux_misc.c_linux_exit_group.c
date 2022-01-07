
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_tid; } ;
struct linux_exit_group_args {int error_code; } ;


 int LINUX_CTR2 (int ,char*,int ,int ) ;
 int exit1 (struct thread*,int ,int ) ;
 int exit_group ;

int
linux_exit_group(struct thread *td, struct linux_exit_group_args *args)
{

 LINUX_CTR2(exit_group, "thread(%d) (%d)", td->td_tid,
     args->error_code);






 exit1(td, args->error_code, 0);

}
