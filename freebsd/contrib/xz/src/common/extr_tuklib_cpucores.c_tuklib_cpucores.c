
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct pst_dynamic {int psd_proc_cnt; } ;
typedef int set ;
typedef int pst ;
typedef int cpuset_t ;
typedef int cpus ;
typedef int cpu_set_t ;
typedef int cpu_mask ;
struct TYPE_3__ {int dwNumberOfProcessors; } ;
typedef TYPE_1__ SYSTEM_INFO ;


 int CPU_COUNT (int *) ;
 scalar_t__ CPU_ISSET (unsigned int,int *) ;
 int CPU_LEVEL_WHICH ;
 unsigned int CPU_SETSIZE ;
 int CPU_WHICH_PID ;
 int CTL_HW ;
 int GetSystemInfo (TYPE_1__*) ;
 int HW_NCPU ;
 int _SC_NPROCESSORS_ONLN ;
 int _SC_NPROC_ONLN ;
 scalar_t__ cpuset_getaffinity (int ,int ,int,int,int *) ;
 int pstat_getdynamic (struct pst_dynamic*,int,int,int ) ;
 scalar_t__ sched_getaffinity (int ,int,int *) ;
 long sysconf (int ) ;
 int sysctl (int*,int,int*,size_t*,int *,int ) ;

extern uint32_t
tuklib_cpucores(void)
{
 uint32_t ret = 0;
 return ret;
}
