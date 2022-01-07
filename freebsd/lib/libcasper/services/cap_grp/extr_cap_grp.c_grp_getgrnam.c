
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group {int dummy; } ;
typedef int nvlist_t ;


 int EINVAL ;
 int assert (int ) ;
 scalar_t__ errno ;
 struct group* getgrnam (char const*) ;
 int grp_pack (int const*,struct group*,int *) ;
 int nvlist_exists_string (int const*,char*) ;
 char* nvlist_get_string (int const*,char*) ;

__attribute__((used)) static int
grp_getgrnam(const nvlist_t *limits, const nvlist_t *nvlin, nvlist_t *nvlout)
{
 struct group *grp;
 const char *name;

 if (!nvlist_exists_string(nvlin, "name"))
  return (EINVAL);
 name = nvlist_get_string(nvlin, "name");
 assert(name != ((void*)0));

 errno = 0;
 grp = getgrnam(name);
 if (errno != 0)
  return (errno);

 (void)grp_pack(limits, grp, nvlout);

 return (0);
}
