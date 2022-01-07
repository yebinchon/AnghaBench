
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* pthread_attr_t ;
struct TYPE_3__ {int flags; } ;


 int EINVAL ;
 int PTHREAD_SCOPE_PROCESS ;
 int PTHREAD_SCOPE_SYSTEM ;

int
_thr_attr_setscope(pthread_attr_t *attr, int contentionscope)
{
 int ret = 0;

 if ((attr == ((void*)0)) || (*attr == ((void*)0))) {

  ret = EINVAL;
 } else if ((contentionscope != PTHREAD_SCOPE_PROCESS) &&
     (contentionscope != PTHREAD_SCOPE_SYSTEM)) {
  ret = EINVAL;
 } else if (contentionscope == PTHREAD_SCOPE_SYSTEM) {
  (*attr)->flags |= contentionscope;
 } else {
  (*attr)->flags &= ~PTHREAD_SCOPE_SYSTEM;
 }
 return (ret);
}
