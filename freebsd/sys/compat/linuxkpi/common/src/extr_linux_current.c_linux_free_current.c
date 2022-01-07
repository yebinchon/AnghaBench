
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int mm; } ;


 int M_LINUX_CURRENT ;
 int free (struct task_struct*,int ) ;
 int mmput (int ) ;

void
linux_free_current(struct task_struct *ts)
{
 mmput(ts->mm);
 free(ts, M_LINUX_CURRENT);
}
