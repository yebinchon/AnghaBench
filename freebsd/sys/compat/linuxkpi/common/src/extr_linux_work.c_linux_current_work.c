
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct work_struct {int dummy; } ;
struct TYPE_2__ {struct work_struct* work; } ;


 TYPE_1__* current ;

struct work_struct *
linux_current_work(void)
{
 return (current->work);
}
