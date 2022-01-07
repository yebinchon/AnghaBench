
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread {int dummy; } ;


 int testcancel (struct pthread*) ;

void
_thr_testcancel(struct pthread *curthread)
{
 testcancel(curthread);
}
