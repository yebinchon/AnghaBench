
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct pthread {int dummy; } ;
typedef TYPE_1__* pthread_t ;
struct TYPE_6__ {int flags; int * joiner; } ;


 int EINVAL ;
 int THR_FLAGS_DETACHED ;
 int THR_THREAD_UNLOCK (struct pthread*,TYPE_1__*) ;
 struct pthread* _get_curthread () ;
 int _thr_find_thread (struct pthread*,TYPE_1__*,int) ;
 int _thr_try_gc (struct pthread*,TYPE_1__*) ;

int
_thr_detach(pthread_t pthread)
{
 struct pthread *curthread = _get_curthread();
 int rval;

 if (pthread == ((void*)0))
  return (EINVAL);

 if ((rval = _thr_find_thread(curthread, pthread,
                   1)) != 0) {
  return (rval);
 }


 if ((pthread->flags & THR_FLAGS_DETACHED) != 0 ||
     (pthread->joiner != ((void*)0))) {
  THR_THREAD_UNLOCK(curthread, pthread);
  return (EINVAL);
 }


 pthread->flags |= THR_FLAGS_DETACHED;
 _thr_try_gc(curthread, pthread);

 return (0);
}
