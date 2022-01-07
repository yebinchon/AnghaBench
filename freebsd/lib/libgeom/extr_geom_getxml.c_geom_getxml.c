
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mib ;


 scalar_t__ ENOMEM ;
 int GEOM_GETXML_RETRIES ;
 scalar_t__ GEOM_GETXML_SLACK ;
 scalar_t__ errno ;
 int free (char*) ;
 char* malloc (size_t) ;
 char* reallocf (char*,scalar_t__) ;
 scalar_t__ strlen (char*) ;
 scalar_t__ sysctl (int*,size_t,char*,size_t*,int *,int ) ;
 scalar_t__ sysctlnametomib (char*,int*,size_t*) ;

char *
geom_getxml(void)
{
 char *p;
 size_t l = 0;
 int mib[3];
 size_t sizep;
 int retries;

 sizep = sizeof(mib) / sizeof(*mib);
 if (sysctlnametomib("kern.geom.confxml", mib, &sizep) != 0)
  return (((void*)0));
 if (sysctl(mib, sizep, ((void*)0), &l, ((void*)0), 0) != 0)
  return (((void*)0));
 l += GEOM_GETXML_SLACK;

 for (retries = 0; retries < GEOM_GETXML_RETRIES; retries++) {
  p = malloc(l);
  if (p == ((void*)0))
   return (((void*)0));
  if (sysctl(mib, sizep, p, &l, ((void*)0), 0) == 0)
   return (reallocf(p, strlen(p) + 1));

  free(p);

  if (errno != ENOMEM)
   return (((void*)0));





  l *= 2;
 }

 return (((void*)0));
}
