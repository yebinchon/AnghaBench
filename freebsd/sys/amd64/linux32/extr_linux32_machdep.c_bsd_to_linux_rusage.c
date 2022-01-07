
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int tv_usec; int tv_sec; } ;
struct TYPE_6__ {int tv_usec; int tv_sec; } ;
struct rusage {int ru_nivcsw; int ru_nvcsw; int ru_nsignals; int ru_msgrcv; int ru_msgsnd; int ru_oublock; int ru_inblock; int ru_nswap; int ru_majflt; int ru_minflt; int ru_isrss; int ru_idrss; int ru_ixrss; int ru_maxrss; TYPE_4__ ru_stime; TYPE_2__ ru_utime; } ;
struct TYPE_7__ {int tv_usec; int tv_sec; } ;
struct TYPE_5__ {int tv_usec; int tv_sec; } ;
struct l_rusage {int ru_nivcsw; int ru_nvcsw; int ru_nsignals; int ru_msgrcv; int ru_msgsnd; int ru_oublock; int ru_inblock; int ru_nswap; int ru_majflt; int ru_minflt; int ru_isrss; int ru_idrss; int ru_ixrss; int ru_maxrss; TYPE_3__ ru_stime; TYPE_1__ ru_utime; } ;



__attribute__((used)) static void
bsd_to_linux_rusage(struct rusage *ru, struct l_rusage *lru)
{

 lru->ru_utime.tv_sec = ru->ru_utime.tv_sec;
 lru->ru_utime.tv_usec = ru->ru_utime.tv_usec;
 lru->ru_stime.tv_sec = ru->ru_stime.tv_sec;
 lru->ru_stime.tv_usec = ru->ru_stime.tv_usec;
 lru->ru_maxrss = ru->ru_maxrss;
 lru->ru_ixrss = ru->ru_ixrss;
 lru->ru_idrss = ru->ru_idrss;
 lru->ru_isrss = ru->ru_isrss;
 lru->ru_minflt = ru->ru_minflt;
 lru->ru_majflt = ru->ru_majflt;
 lru->ru_nswap = ru->ru_nswap;
 lru->ru_inblock = ru->ru_inblock;
 lru->ru_oublock = ru->ru_oublock;
 lru->ru_msgsnd = ru->ru_msgsnd;
 lru->ru_msgrcv = ru->ru_msgrcv;
 lru->ru_nsignals = ru->ru_nsignals;
 lru->ru_nvcsw = ru->ru_nvcsw;
 lru->ru_nivcsw = ru->ru_nivcsw;
}
