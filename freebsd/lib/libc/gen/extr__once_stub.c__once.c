
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pthread_once_t ;


 scalar_t__ __isthreaded ;
 int _libc_once (int *,void (*) ()) ;
 int _pthread_once (int *,void (*) ()) ;

int
_once(pthread_once_t *once_control, void (*init_routine)(void))
{

 if (__isthreaded)
  return (_pthread_once(once_control, init_routine));
 return (_libc_once(once_control, init_routine));
}
