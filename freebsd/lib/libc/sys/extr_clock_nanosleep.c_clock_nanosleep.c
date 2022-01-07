
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
typedef int clockid_t ;


 size_t INTERPOS_clock_nanosleep ;
 scalar_t__* __libc_interposing ;
 int stub1 (int ,int,struct timespec const*,struct timespec*) ;

int
clock_nanosleep(clockid_t clock_id, int flags, const struct timespec *rqtp,
    struct timespec *rmtp)
{

 return (((int (*)(clockid_t, int, const struct timespec *,
     struct timespec *))
     __libc_interposing[INTERPOS_clock_nanosleep])(clock_id, flags,
     rqtp, rmtp));
}
