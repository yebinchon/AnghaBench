
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread {int cancel_enable; int cancel_async; } ;


 int EINVAL ;


 struct pthread* _get_curthread () ;
 int testcancel (struct pthread*) ;

int
_thr_setcancelstate(int state, int *oldstate)
{
 struct pthread *curthread = _get_curthread();
 int oldval;

 oldval = curthread->cancel_enable;
 switch (state) {
 case 129:
  curthread->cancel_enable = 0;
  break;
 case 128:
  curthread->cancel_enable = 1;
  if (curthread->cancel_async)
   testcancel(curthread);
  break;
 default:
  return (EINVAL);
 }

 if (oldstate) {
  *oldstate = oldval ? 128 :
   129;
 }
 return (0);
}
