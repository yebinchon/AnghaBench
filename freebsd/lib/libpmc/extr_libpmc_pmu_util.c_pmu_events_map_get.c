
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pmu_events_map {char* cpuid; } ;
struct TYPE_3__ {size_t rm_eo; size_t rm_so; } ;
typedef TYPE_1__ regmatch_t ;
typedef int regex_t ;


 int REG_EXTENDED ;
 int memcpy (char*,char const*,int) ;
 struct pmu_events_map* pmu_events_map ;
 int printf (char*,char*) ;
 scalar_t__ regcomp (int *,char*,int ) ;
 int regexec (int *,char*,int,TYPE_1__*,int ) ;
 int regfree (int *) ;
 size_t strlen (char*) ;
 int sysctlbyname (char*,char*,size_t*,void*,int ) ;

__attribute__((used)) static const struct pmu_events_map *
pmu_events_map_get(const char *cpuid)
{
 regex_t re;
 regmatch_t pmatch[1];
 size_t s, len;
 char buf[64];
 int match;
 const struct pmu_events_map *pme;

 if (cpuid != ((void*)0)) {
  memcpy(buf, cpuid, 64);
 } else {
  if (sysctlbyname("kern.hwpmc.cpuid", (void *)((void*)0), &s,
      (void *)((void*)0), 0) == -1)
   return (((void*)0));
  if (sysctlbyname("kern.hwpmc.cpuid", buf, &s,
      (void *)((void*)0), 0) == -1)
   return (((void*)0));
 }
 for (pme = pmu_events_map; pme->cpuid != ((void*)0); pme++) {
  if (regcomp(&re, pme->cpuid, REG_EXTENDED) != 0) {
   printf("regex '%s' failed to compile, ignoring\n",
       pme->cpuid);
   continue;
  }
  match = regexec(&re, buf, 1, pmatch, 0);
  regfree(&re);
  if (match == 0) {
   len = pmatch[0].rm_eo - pmatch[0].rm_so;
   if(len == strlen(buf))
    return (pme);
  }
 }
 return (((void*)0));
}
