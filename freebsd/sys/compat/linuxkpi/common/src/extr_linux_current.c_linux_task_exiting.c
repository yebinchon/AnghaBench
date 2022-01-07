
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int pid; } ;
struct proc {int p_flag; } ;


 int PROC_UNLOCK (struct proc*) ;
 int P_WEXIT ;
 struct proc* pfind (int ) ;

bool
linux_task_exiting(struct task_struct *task)
{
 struct proc *p;
 bool ret;

 ret = 0;
 p = pfind(task->pid);
 if (p != ((void*)0)) {
  if ((p->p_flag & P_WEXIT) != 0)
   ret = 1;
  PROC_UNLOCK(p);
 }
 return (ret);
}
