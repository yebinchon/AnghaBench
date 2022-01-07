
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pmu_event_desc {scalar_t__ ped_umask; scalar_t__ ped_inv; scalar_t__ ped_edge; int ped_event; int ped_l3_thread; int ped_l3_slice; } ;
struct pmu_event {int topic; } ;
struct pmc_md_amd_op_pmcallocate {int pm_amd_config; int pm_amd_sub_class; } ;
struct TYPE_2__ {struct pmc_md_amd_op_pmcallocate pm_amd; } ;
struct pmc_op_pmcallocate {int pm_caps; int pm_class; TYPE_1__ pm_md; } ;


 int AMD_PMC_EDGE ;
 int AMD_PMC_INT ;
 int AMD_PMC_OS ;
 int AMD_PMC_TO_EVENTMASK (int ) ;
 int AMD_PMC_TO_EVENTMASK_DF (int ) ;
 int AMD_PMC_TO_L3CORE (int ) ;
 int AMD_PMC_TO_L3SLICE (int ) ;
 int AMD_PMC_TO_UNITMASK (scalar_t__) ;
 int AMD_PMC_USR ;
 int PMC_AMD_SUB_CLASS_CORE ;
 int PMC_AMD_SUB_CLASS_DATA_FABRIC ;
 int PMC_AMD_SUB_CLASS_L3_CACHE ;
 int PMC_CAP_INTERRUPT ;
 int PMC_CAP_QUALIFIER ;
 int PMC_CAP_SYSTEM ;
 int PMC_CAP_USER ;
 int PMC_CLASS_K8 ;
 struct pmu_event* pmu_event_get (int *,char const*,int*) ;
 scalar_t__ strcmp (char*,int ) ;

__attribute__((used)) static int
pmc_pmu_amd_pmcallocate(const char *event_name, struct pmc_op_pmcallocate *pm,
 struct pmu_event_desc *ped)
{
 struct pmc_md_amd_op_pmcallocate *amd;
 const struct pmu_event *pe;
 int idx = -1;

 amd = &pm->pm_md.pm_amd;
 if (ped->ped_umask > 0) {
  pm->pm_caps |= PMC_CAP_QUALIFIER;
  amd->pm_amd_config |= AMD_PMC_TO_UNITMASK(ped->ped_umask);
 }
 pm->pm_class = PMC_CLASS_K8;
 pe = pmu_event_get(((void*)0), event_name, &idx);

 if (strcmp("l3cache", pe->topic) == 0){
  amd->pm_amd_config |= AMD_PMC_TO_EVENTMASK(ped->ped_event);
  amd->pm_amd_sub_class = PMC_AMD_SUB_CLASS_L3_CACHE;
  amd->pm_amd_config |= AMD_PMC_TO_L3SLICE(ped->ped_l3_slice);
  amd->pm_amd_config |= AMD_PMC_TO_L3CORE(ped->ped_l3_thread);
 }
 else if (strcmp("data fabric", pe->topic) == 0){

  amd->pm_amd_config |= AMD_PMC_TO_EVENTMASK_DF(ped->ped_event);
  amd->pm_amd_sub_class = PMC_AMD_SUB_CLASS_DATA_FABRIC;
 }
 else{
  amd->pm_amd_config |= AMD_PMC_TO_EVENTMASK(ped->ped_event);
  amd->pm_amd_sub_class = PMC_AMD_SUB_CLASS_CORE;
  if ((pm->pm_caps & (PMC_CAP_USER|PMC_CAP_SYSTEM)) == 0 ||
   (pm->pm_caps & (PMC_CAP_USER|PMC_CAP_SYSTEM)) ==
   (PMC_CAP_USER|PMC_CAP_SYSTEM))
   amd->pm_amd_config |= (AMD_PMC_USR | AMD_PMC_OS);
  else if (pm->pm_caps & PMC_CAP_USER)
   amd->pm_amd_config |= AMD_PMC_USR;
  else if (pm->pm_caps & PMC_CAP_SYSTEM)
   amd->pm_amd_config |= AMD_PMC_OS;
  if (ped->ped_edge)
   amd->pm_amd_config |= AMD_PMC_EDGE;
  if (ped->ped_inv)
   amd->pm_amd_config |= AMD_PMC_EDGE;
  if (pm->pm_caps & PMC_CAP_INTERRUPT)
   amd->pm_amd_config |= AMD_PMC_INT;
 }
 return (0);
}
