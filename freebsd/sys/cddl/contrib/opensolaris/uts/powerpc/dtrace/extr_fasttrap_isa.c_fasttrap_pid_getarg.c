
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct reg {int dummy; } ;
typedef int dtrace_id_t ;


 int curthread ;
 int fasttrap_anarg (struct reg*,int) ;
 int fill_regs (int ,struct reg*) ;

uint64_t
fasttrap_pid_getarg(void *arg, dtrace_id_t id, void *parg, int argno,
    int aframes)
{
 struct reg r;

 fill_regs(curthread, &r);

 return (fasttrap_anarg(&r, argno));
}
