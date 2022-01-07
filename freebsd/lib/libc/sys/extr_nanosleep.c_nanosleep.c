
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;


 size_t INTERPOS_nanosleep ;
 scalar_t__* __libc_interposing ;
 int stub1 (struct timespec const*,struct timespec*) ;

int
nanosleep(const struct timespec *rqtp, struct timespec *rmtp)
{

 return (((int (*)(const struct timespec *, struct timespec *))
     __libc_interposing[INTERPOS_nanosleep])(rqtp, rmtp));
}
