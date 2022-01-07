
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread {int cancel_async; } ;


 int EINVAL ;


 struct pthread* _get_curthread () ;
 int testcancel (struct pthread*) ;

int
_thr_setcanceltype(int type, int *oldtype)
{
 struct pthread *curthread = _get_curthread();
 int oldval;

 oldval = curthread->cancel_async;
 switch (type) {
 case 129:
  curthread->cancel_async = 1;
  testcancel(curthread);
  break;
 case 128:
  curthread->cancel_async = 0;
  break;
 default:
  return (EINVAL);
 }

 if (oldtype) {
  *oldtype = oldval ? 129 :
    128;
 }
 return (0);
}
