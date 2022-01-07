
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct linux_renameat_args {int newname; int newdfd; int oldname; int olddfd; } ;
struct linux_renameat2_args {int flags; int newname; int newdfd; int oldname; int olddfd; } ;


 int linux_renameat2 (struct thread*,struct linux_renameat2_args*) ;

int
linux_renameat(struct thread *td, struct linux_renameat_args *args)
{
 struct linux_renameat2_args renameat2_args = {
     .olddfd = args->olddfd,
     .oldname = args->oldname,
     .newdfd = args->newdfd,
     .newname = args->newname,
     .flags = 0
 };

 return (linux_renameat2(td, &renameat2_args));
}
