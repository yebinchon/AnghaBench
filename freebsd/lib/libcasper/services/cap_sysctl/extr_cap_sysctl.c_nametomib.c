
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int ENOMEM ;
 int ENOTCAPABLE ;
 int errno ;
 int free (int*) ;
 int* malloc (size_t) ;
 int nvlist_add_binary (int *,char*,int*,size_t) ;
 scalar_t__ nvlist_get_number (int const*,char*) ;
 char* nvlist_get_string (int const*,char*) ;
 int sysctl_allowed (int const*,int const*) ;
 int sysctlnametomib (char const*,int*,size_t*) ;

__attribute__((used)) static int
nametomib(const nvlist_t *limits, const nvlist_t *nvlin, nvlist_t *nvlout)
{
 const char *name;
 size_t size;
 int error, *mibp;

 if (!sysctl_allowed(limits, nvlin))
  return (ENOTCAPABLE);

 name = nvlist_get_string(nvlin, "name");
 size = (size_t)nvlist_get_number(nvlin, "size");

 mibp = malloc(size * sizeof(*mibp));
 if (mibp == ((void*)0))
  return (ENOMEM);

 error = sysctlnametomib(name, mibp, &size);
 if (error != 0) {
  error = errno;
  free(mibp);
  return (error);
 }

 nvlist_add_binary(nvlout, "mib", mibp, size * sizeof(*mibp));

 return (0);
}
