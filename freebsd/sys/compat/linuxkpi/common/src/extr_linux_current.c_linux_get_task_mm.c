
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {struct mm_struct* mm; } ;
struct mm_struct {int mm_users; } ;


 int atomic_inc (int *) ;

struct mm_struct *
linux_get_task_mm(struct task_struct *task)
{
 struct mm_struct *mm;

 mm = task->mm;
 if (mm != ((void*)0)) {
  atomic_inc(&mm->mm_users);
  return (mm);
 }
 return (((void*)0));
}
