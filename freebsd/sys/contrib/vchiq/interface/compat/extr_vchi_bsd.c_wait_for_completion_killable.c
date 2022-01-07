
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct completion {int dummy; } ;


 int wait_for_completion_interruptible (struct completion*) ;

int
wait_for_completion_killable(struct completion *c)
{

 return wait_for_completion_interruptible(c);
}
