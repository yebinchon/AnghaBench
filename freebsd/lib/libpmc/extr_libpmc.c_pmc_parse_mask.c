
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct pmc_masks {int pm_value; int * pm_name; } ;


 scalar_t__ strcasecmp (char*,int *) ;
 char* strchr (char*,char) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static int
pmc_parse_mask(const struct pmc_masks *pmask, char *p, uint64_t *evmask)
{
 const struct pmc_masks *pm;
 char *q, *r;
 int c;

 if (pmask == ((void*)0))
  return (-1);
 q = strchr(p, '=');
 if (*++q == '\0')
  return (-1);
 c = 0;
 while ((r = strsep(&q, "+")) != ((void*)0)) {
  for (pm = pmask; pm->pm_name && strcasecmp(r, pm->pm_name);
      pm++)
   ;
  if (pm->pm_name == ((void*)0))
   return (-1);
  *evmask |= pm->pm_value;
  c++;
 }
 return (c);
}
