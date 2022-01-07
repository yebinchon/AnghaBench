
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pst_dynamic {int psd_proc_cnt; } ;
typedef int psd ;
typedef int nproc ;


 int CTL_HW ;
 int HW_NCPU ;
 int _SC_NPROCESSORS_ONLN ;
 int pstat_getdynamic (struct pst_dynamic*,int,size_t,int ) ;
 scalar_t__ sysconf (int ) ;
 int sysctl (int*,int,int*,size_t*,int *,int ) ;

__attribute__((used)) static int
get_num_procs_online()
{
 int nproc = 0;
 if (nproc <= 0)
  nproc = 1;
 return nproc;
}
