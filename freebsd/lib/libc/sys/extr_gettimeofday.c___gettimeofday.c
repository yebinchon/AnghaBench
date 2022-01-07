
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timezone {int dummy; } ;
struct timeval {int dummy; } ;


 int ENOSYS ;
 int __sys_gettimeofday (struct timeval*,struct timezone*) ;
 int __vdso_gettimeofday (struct timeval*,struct timezone*) ;

int
__gettimeofday(struct timeval *tv, struct timezone *tz)
{
 int error;

 error = __vdso_gettimeofday(tv, tz);
 if (error == ENOSYS)
  error = __sys_gettimeofday(tv, tz);
 return (error);
}
