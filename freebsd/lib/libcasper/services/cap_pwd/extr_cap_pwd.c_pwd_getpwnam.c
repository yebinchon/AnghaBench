
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {int dummy; } ;
typedef int nvlist_t ;


 int EINVAL ;
 int assert (int ) ;
 scalar_t__ errno ;
 struct passwd* getpwnam (char const*) ;
 int nvlist_exists_string (int const*,char*) ;
 char* nvlist_get_string (int const*,char*) ;
 int pwd_pack (int const*,struct passwd*,int *) ;

__attribute__((used)) static int
pwd_getpwnam(const nvlist_t *limits, const nvlist_t *nvlin, nvlist_t *nvlout)
{
 struct passwd *pwd;
 const char *name;

 if (!nvlist_exists_string(nvlin, "name"))
  return (EINVAL);
 name = nvlist_get_string(nvlin, "name");
 assert(name != ((void*)0));

 errno = 0;
 pwd = getpwnam(name);
 if (errno != 0)
  return (errno);

 (void)pwd_pack(limits, pwd, nvlout);

 return (0);
}
