
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rusage32 {int dummy; } ;
struct rusage {int dummy; } ;


 int CP (struct rusage const,struct rusage32,int ) ;
 int TV_CP (struct rusage const,struct rusage32,int ) ;
 int ru_idrss ;
 int ru_inblock ;
 int ru_isrss ;
 int ru_ixrss ;
 int ru_majflt ;
 int ru_maxrss ;
 int ru_minflt ;
 int ru_msgrcv ;
 int ru_msgsnd ;
 int ru_nivcsw ;
 int ru_nsignals ;
 int ru_nswap ;
 int ru_nvcsw ;
 int ru_oublock ;
 int ru_stime ;
 int ru_utime ;

void
freebsd32_rusage_out(const struct rusage *s, struct rusage32 *s32)
{

 TV_CP(*s, *s32, ru_utime);
 TV_CP(*s, *s32, ru_stime);
 CP(*s, *s32, ru_maxrss);
 CP(*s, *s32, ru_ixrss);
 CP(*s, *s32, ru_idrss);
 CP(*s, *s32, ru_isrss);
 CP(*s, *s32, ru_minflt);
 CP(*s, *s32, ru_majflt);
 CP(*s, *s32, ru_nswap);
 CP(*s, *s32, ru_inblock);
 CP(*s, *s32, ru_oublock);
 CP(*s, *s32, ru_msgsnd);
 CP(*s, *s32, ru_msgrcv);
 CP(*s, *s32, ru_nsignals);
 CP(*s, *s32, ru_nvcsw);
 CP(*s, *s32, ru_nivcsw);
}
