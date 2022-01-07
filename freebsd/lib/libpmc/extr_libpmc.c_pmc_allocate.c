
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct pmc_op_pmcallocate {int pm_cpu; int pm_mode; int pm_pmcid; int pm_class; int pm_ev; int pm_caps; int pm_count; int pm_flags; } ;
struct pmc_event_descr {int pm_ev_code; } ;
struct pmc_event_alias {char const* pm_spec; scalar_t__ pm_alias; } ;
struct pmc_class_descr {int pm_evc_name_size; scalar_t__ (* pm_evc_allocate_pmc ) (int ,char*,struct pmc_op_pmcallocate*) ;int pm_evc_class; int pm_evc_name; } ;
typedef int pmc_id_t ;
typedef int pmc_config ;
typedef enum pmc_mode { ____Placeholder_pmc_mode } pmc_mode ;


 int EINVAL ;
 int EX_USAGE ;
 int PMCALLOCATE ;
 scalar_t__ PMC_CALL (int ,struct pmc_op_pmcallocate*) ;
 int PMC_CAP_INTERRUPT ;
 size_t PMC_CLASS_TABLE_SIZE ;
 scalar_t__ PMC_IS_SAMPLING_MODE (int) ;
 int PMC_MODE_SC ;
 int PMC_MODE_SS ;
 int PMC_MODE_TC ;
 int PMC_MODE_TS ;
 int bzero (struct pmc_op_pmcallocate*,int) ;
 int errno ;
 int errx (int ,char*,char const*) ;
 int free (char*) ;
 struct pmc_class_descr** pmc_class_table ;
 struct pmc_event_descr* pmc_match_event_class (char const*,struct pmc_class_descr const*) ;
 struct pmc_event_alias* pmc_mdep_event_aliases ;
 scalar_t__ pmc_mdep_is_compatible_class (int ) ;
 scalar_t__ pmc_pmu_enabled () ;
 scalar_t__ pmc_pmu_pmcallocate (char const*,struct pmc_op_pmcallocate*) ;
 int strcasecmp (char const*,scalar_t__) ;
 char* strdup (char const*) ;
 scalar_t__ strncasecmp (char const*,int ,int) ;
 char* strsep (char**,char*) ;
 scalar_t__ stub1 (int ,char*,struct pmc_op_pmcallocate*) ;

int
pmc_allocate(const char *ctrspec, enum pmc_mode mode,
    uint32_t flags, int cpu, pmc_id_t *pmcid,
    uint64_t count)
{
 size_t n;
 int retval;
 char *r, *spec_copy;
 const char *ctrname;
 const struct pmc_event_descr *ev;
 const struct pmc_event_alias *alias;
 struct pmc_op_pmcallocate pmc_config;
 const struct pmc_class_descr *pcd;

 spec_copy = ((void*)0);
 retval = -1;

 if (mode != PMC_MODE_SS && mode != PMC_MODE_TS &&
     mode != PMC_MODE_SC && mode != PMC_MODE_TC) {
  errno = EINVAL;
  goto out;
 }
 bzero(&pmc_config, sizeof(pmc_config));
 pmc_config.pm_cpu = cpu;
 pmc_config.pm_mode = mode;
 pmc_config.pm_flags = flags;
 pmc_config.pm_count = count;
 if (PMC_IS_SAMPLING_MODE(mode))
  pmc_config.pm_caps |= PMC_CAP_INTERRUPT;



 r = spec_copy = strdup(ctrspec);
 ctrname = strsep(&r, ",");
 if (pmc_pmu_enabled()) {
  if (pmc_pmu_pmcallocate(ctrname, &pmc_config) == 0) {
   if (PMC_CALL(PMCALLOCATE, &pmc_config) < 0) {
    goto out;
   }
   retval = 0;
   *pmcid = pmc_config.pm_pmcid;
   goto out;
  }
  errx(EX_USAGE, "ERROR: pmc_pmu_allocate failed, check for ctrname %s\n", ctrname);
 } else {
  free(spec_copy);
  spec_copy = ((void*)0);
 }


 if (pmc_mdep_event_aliases)
  for (alias = pmc_mdep_event_aliases; alias->pm_alias; alias++)
   if (!strcasecmp(ctrspec, alias->pm_alias)) {
    spec_copy = strdup(alias->pm_spec);
    break;
   }

 if (spec_copy == ((void*)0))
  spec_copy = strdup(ctrspec);

 r = spec_copy;
 ctrname = strsep(&r, ",");





 ev = ((void*)0);
 for (n = 0; n < PMC_CLASS_TABLE_SIZE; n++) {
  pcd = pmc_class_table[n];
  if (pcd && pmc_mdep_is_compatible_class(pcd->pm_evc_class) &&
      strncasecmp(ctrname, pcd->pm_evc_name,
    pcd->pm_evc_name_size) == 0) {
   if ((ev = pmc_match_event_class(ctrname +
       pcd->pm_evc_name_size, pcd)) == ((void*)0)) {
    errno = EINVAL;
    goto out;
   }
   break;
  }
 }





 for (n = 0; ev == ((void*)0) && n < PMC_CLASS_TABLE_SIZE; n++) {
  pcd = pmc_class_table[n];
  if (pcd && pmc_mdep_is_compatible_class(pcd->pm_evc_class))
   ev = pmc_match_event_class(ctrname, pcd);
 }

 if (ev == ((void*)0)) {
  errno = EINVAL;
  goto out;
 }

 pmc_config.pm_ev = ev->pm_ev_code;
 pmc_config.pm_class = pcd->pm_evc_class;

  if (pcd->pm_evc_allocate_pmc(ev->pm_ev_code, r, &pmc_config) < 0) {
  errno = EINVAL;
  goto out;
 }

 if (PMC_CALL(PMCALLOCATE, &pmc_config) < 0)
  goto out;

 *pmcid = pmc_config.pm_pmcid;

 retval = 0;

 out:
 if (spec_copy)
  free(spec_copy);

 return (retval);
}
