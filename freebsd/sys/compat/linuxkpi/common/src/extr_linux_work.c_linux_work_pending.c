
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int state; } ;





 int atomic_read (int *) ;

bool
linux_work_pending(struct work_struct *work)
{
 switch (atomic_read(&work->state)) {
 case 128:
 case 129:
 case 130:
  return (1);
 default:
  return (0);
 }
}
