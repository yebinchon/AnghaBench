
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
typedef int clockid_t ;


 int ENOSYS ;
 int __sys_clock_gettime (int ,struct timespec*) ;
 int __vdso_clock_gettime (int ,struct timespec*) ;
 int * __vdso_gettc ;

int
__clock_gettime(clockid_t clock_id, struct timespec *ts)
{
 int error;

 if (__vdso_clock_gettime != ((void*)0) && __vdso_gettc != ((void*)0))
  error = __vdso_clock_gettime(clock_id, ts);
 else
  error = ENOSYS;
 if (error == ENOSYS)
  error = __sys_clock_gettime(clock_id, ts);
 return (error);
}
