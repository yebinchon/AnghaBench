
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct completion {scalar_t__ done; } ;


 scalar_t__ UINT_MAX ;
 int sleepq_lock (struct completion*) ;
 int sleepq_release (struct completion*) ;

int
linux_try_wait_for_completion(struct completion *c)
{
 int isdone;

 sleepq_lock(c);
 isdone = (c->done != 0);
 if (c->done != 0 && c->done != UINT_MAX)
  c->done--;
 sleepq_release(c);
 return (isdone);
}
