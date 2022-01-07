
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct semaphore {int dummy; } ;


 int _sema_init (struct semaphore*,int) ;

void sema_sysinit(void *arg)
{
 struct semaphore *s = arg;

 _sema_init(s, 1);
}
