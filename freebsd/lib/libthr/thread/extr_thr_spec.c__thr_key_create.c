
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pthread {int dummy; } ;
typedef int pthread_key_t ;
struct TYPE_2__ {int allocated; void (* destructor ) (void*) ;int seqno; } ;


 int EAGAIN ;
 int PTHREAD_KEYS_MAX ;
 int THR_LOCK_ACQUIRE (struct pthread*,int *) ;
 int THR_LOCK_RELEASE (struct pthread*,int *) ;
 struct pthread* _get_curthread () ;
 int _keytable_lock ;
 int _thr_check_init () ;
 TYPE_1__* _thread_keytable ;

int
_thr_key_create(pthread_key_t *key, void (*destructor)(void *))
{
 struct pthread *curthread;
 int i;

 _thr_check_init();

 curthread = _get_curthread();

 THR_LOCK_ACQUIRE(curthread, &_keytable_lock);
 for (i = 0; i < PTHREAD_KEYS_MAX; i++) {

  if (_thread_keytable[i].allocated == 0) {
   _thread_keytable[i].allocated = 1;
   _thread_keytable[i].destructor = destructor;
   _thread_keytable[i].seqno++;

   THR_LOCK_RELEASE(curthread, &_keytable_lock);
   *key = i + 1;
   return (0);
  }

 }
 THR_LOCK_RELEASE(curthread, &_keytable_lock);
 return (EAGAIN);
}
