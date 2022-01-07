
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread {int cancel_point; } ;


 int testcancel (struct pthread*) ;

void
_thr_cancel_enter(struct pthread *curthread)
{
 curthread->cancel_point = 1;
 testcancel(curthread);
}
