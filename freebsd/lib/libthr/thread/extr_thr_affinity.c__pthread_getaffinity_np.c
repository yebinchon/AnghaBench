
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread {int dummy; } ;
typedef struct pthread* pthread_t ;
typedef int lwpid_t ;
typedef int cpuset_t ;


 int CPU_LEVEL_WHICH ;
 int CPU_WHICH_TID ;
 int THR_THREAD_UNLOCK (struct pthread*,struct pthread*) ;
 int TID (struct pthread*) ;
 struct pthread* _get_curthread () ;
 int _thr_find_thread (struct pthread*,struct pthread*,int ) ;
 int cpuset_getaffinity (int ,int ,int,size_t,int *) ;
 int errno ;

int
_pthread_getaffinity_np(pthread_t td, size_t cpusetsize, cpuset_t *cpusetp)
{
 struct pthread *curthread = _get_curthread();
 lwpid_t tid;
 int error;

 if (td == curthread) {
  error = cpuset_getaffinity(CPU_LEVEL_WHICH, CPU_WHICH_TID,
   -1, cpusetsize, cpusetp);
  if (error == -1)
   error = errno;
 } else if ((error = _thr_find_thread(curthread, td, 0)) == 0) {
  tid = TID(td);
  error = cpuset_getaffinity(CPU_LEVEL_WHICH, CPU_WHICH_TID, tid,
       cpusetsize, cpusetp);
  if (error == -1)
   error = errno;
  THR_THREAD_UNLOCK(curthread, td);
 }
 return (error);
}
