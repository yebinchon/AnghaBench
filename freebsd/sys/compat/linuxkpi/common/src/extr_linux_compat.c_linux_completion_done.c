
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct completion {scalar_t__ done; } ;


 int sleepq_lock (struct completion*) ;
 int sleepq_release (struct completion*) ;

int
linux_completion_done(struct completion *c)
{
 int isdone;

 sleepq_lock(c);
 isdone = (c->done != 0);
 sleepq_release(c);
 return (isdone);
}
