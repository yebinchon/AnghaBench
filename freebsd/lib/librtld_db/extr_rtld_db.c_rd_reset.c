
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ u_long ;
struct kinfo_vmentry {scalar_t__ kve_start; char* kve_path; } ;
struct kinfo_proc {int dummy; } ;
typedef int rd_err_e ;
struct TYPE_9__ {int rda_procstat; int rda_php; } ;
typedef TYPE_2__ rd_agent_t ;
struct TYPE_8__ {scalar_t__ a_val; } ;
struct TYPE_10__ {scalar_t__ a_type; TYPE_1__ a_un; } ;
typedef TYPE_3__ Elf_Auxinfo ;


 scalar_t__ AT_BASE ;
 int KERN_PROC_PID ;
 int RD_ERR ;
 int RD_OK ;
 int assert (int) ;
 int proc_getpid (int ) ;
 int procstat_freeauxv (int ,TYPE_3__*) ;
 int procstat_freeprocs (int ,struct kinfo_proc*) ;
 int procstat_freevmmap (int ,struct kinfo_vmentry*) ;
 TYPE_3__* procstat_getauxv (int ,struct kinfo_proc*,int*) ;
 struct kinfo_proc* procstat_getprocs (int ,int ,int ,int*) ;
 struct kinfo_vmentry* procstat_getvmmap (int ,struct kinfo_proc*,int*) ;
 scalar_t__ rtld_syms (TYPE_2__*,char const*,scalar_t__) ;

rd_err_e
rd_reset(rd_agent_t *rdap)
{
 struct kinfo_proc *kp;
 struct kinfo_vmentry *kve;
 Elf_Auxinfo *auxv;
 const char *rtldpath;
 u_long base;
 rd_err_e rderr;
 int count, i;

 kp = ((void*)0);
 auxv = ((void*)0);
 kve = ((void*)0);
 rderr = RD_ERR;

 kp = procstat_getprocs(rdap->rda_procstat, KERN_PROC_PID,
     proc_getpid(rdap->rda_php), &count);
 if (kp == ((void*)0))
  return (RD_ERR);
 assert(count == 1);

 auxv = procstat_getauxv(rdap->rda_procstat, kp, &count);
 if (auxv == ((void*)0))
  goto err;

 base = 0;
 for (i = 0; i < count; i++) {
  if (auxv[i].a_type == AT_BASE) {
   base = auxv[i].a_un.a_val;
   break;
  }
 }
 if (i == count)
  goto err;

 rtldpath = ((void*)0);
 kve = procstat_getvmmap(rdap->rda_procstat, kp, &count);
 if (kve == ((void*)0))
  goto err;
 for (i = 0; i < count; i++) {
  if (kve[i].kve_start == base) {
   rtldpath = kve[i].kve_path;
   break;
  }
 }
 if (i == count)
  goto err;

 if (rtld_syms(rdap, rtldpath, base) != 0)
  goto err;

 rderr = RD_OK;

err:
 if (kve != ((void*)0))
  procstat_freevmmap(rdap->rda_procstat, kve);
 if (auxv != ((void*)0))
  procstat_freeauxv(rdap->rda_procstat, auxv);
 if (kp != ((void*)0))
  procstat_freeprocs(rdap->rda_procstat, kp);
 return (rderr);
}
