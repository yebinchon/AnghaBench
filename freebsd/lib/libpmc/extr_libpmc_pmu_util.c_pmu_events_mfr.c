
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pmu_mfr_t ;


 int PMU_AMD ;
 int PMU_INTEL ;
 int PMU_INVALID ;
 int free (char*) ;
 char* malloc (size_t) ;
 int * strcasestr (char*,char*) ;
 int sysctlbyname (char*,char*,size_t*,void*,int ) ;

__attribute__((used)) static pmu_mfr_t
pmu_events_mfr(void)
{
 char *buf;
 size_t s;
 pmu_mfr_t mfr;

 if (sysctlbyname("kern.hwpmc.cpuid", (void *)((void*)0), &s,
     (void *)((void*)0), 0) == -1)
  return (PMU_INVALID);
 if ((buf = malloc(s + 1)) == ((void*)0))
  return (PMU_INVALID);
 if (sysctlbyname("kern.hwpmc.cpuid", buf, &s,
  (void *)((void*)0), 0) == -1) {
  free(buf);
  return (PMU_INVALID);
 }
 if (strcasestr(buf, "AuthenticAMD") != ((void*)0))
  mfr = PMU_AMD;
 else if (strcasestr(buf, "GenuineIntel") != ((void*)0))
  mfr = PMU_INTEL;
 else
  mfr = PMU_INVALID;
 free(buf);
 return (mfr);
}
