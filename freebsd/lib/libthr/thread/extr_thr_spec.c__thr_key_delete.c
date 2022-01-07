
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pthread {int dummy; } ;
typedef int pthread_key_t ;
struct TYPE_2__ {scalar_t__ allocated; } ;


 int EINVAL ;
 unsigned int PTHREAD_KEYS_MAX ;
 int THR_LOCK_ACQUIRE (struct pthread*,int *) ;
 int THR_LOCK_RELEASE (struct pthread*,int *) ;
 struct pthread* _get_curthread () ;
 int _keytable_lock ;
 TYPE_1__* _thread_keytable ;

int
_thr_key_delete(pthread_key_t userkey)
{
 struct pthread *curthread;
 int key, ret;

 key = userkey - 1;
 if ((unsigned int)key >= PTHREAD_KEYS_MAX)
  return (EINVAL);
 curthread = _get_curthread();
 THR_LOCK_ACQUIRE(curthread, &_keytable_lock);
 if (_thread_keytable[key].allocated) {
  _thread_keytable[key].allocated = 0;
  ret = 0;
 } else {
  ret = EINVAL;
 }
 THR_LOCK_RELEASE(curthread, &_keytable_lock);
 return (ret);
}
