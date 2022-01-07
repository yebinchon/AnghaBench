
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int i ;


 scalar_t__ asprintf (char**,char*,char const*) ;
 int free (char*) ;
 scalar_t__ sysctlbyname (char*,int*,size_t*,int *,int ) ;

int
feature_present(const char *feature)
{
 char *mib;
 size_t len;
 int i;

 if (asprintf(&mib, "kern.features.%s", feature) < 0)
  return (0);
 len = sizeof(i);
 if (sysctlbyname(mib, &i, &len, ((void*)0), 0) < 0) {
  free(mib);
  return (0);
 }
 free(mib);
 if (len != sizeof(i))
  return (0);
 return (i != 0);
}
