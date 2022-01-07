
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOPNOTSUPP ;
 scalar_t__ pmc_pmu_enabled () ;
 char** stat_mode_cntrs ;

int
pmc_pmu_stat_mode(const char ***cntrs)
{
 if (pmc_pmu_enabled()) {
  *cntrs = stat_mode_cntrs;
  return (0);
 }
 return (EOPNOTSUPP);
}
