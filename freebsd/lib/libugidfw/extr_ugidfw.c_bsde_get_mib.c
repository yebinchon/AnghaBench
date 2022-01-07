
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sysctlnametomib (char const*,int*,size_t*) ;

int
bsde_get_mib(const char *string, int *name, size_t *namelen)
{
 size_t len;
 int error;

 len = *namelen;
 error = sysctlnametomib(string, name, &len);
 if (error)
  return (error);

 *namelen = len;
 return (0);
}
