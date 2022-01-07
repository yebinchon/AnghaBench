
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
struct passwd {int dummy; } ;
typedef int nvlist_t ;


 int EINVAL ;
 scalar_t__ errno ;
 struct passwd* getpwuid (scalar_t__) ;
 int nvlist_exists_number (int const*,char*) ;
 scalar_t__ nvlist_get_number (int const*,char*) ;
 int pwd_pack (int const*,struct passwd*,int *) ;

__attribute__((used)) static int
pwd_getpwuid(const nvlist_t *limits, const nvlist_t *nvlin, nvlist_t *nvlout)
{
 struct passwd *pwd;
 uid_t uid;

 if (!nvlist_exists_number(nvlin, "uid"))
  return (EINVAL);

 uid = (uid_t)nvlist_get_number(nvlin, "uid");

 errno = 0;
 pwd = getpwuid(uid);
 if (errno != 0)
  return (errno);

 (void)pwd_pack(limits, pwd, nvlout);

 return (0);
}
