
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group {int dummy; } ;
typedef int nvlist_t ;
typedef scalar_t__ gid_t ;


 int EINVAL ;
 scalar_t__ errno ;
 struct group* getgrgid (scalar_t__) ;
 int grp_pack (int const*,struct group*,int *) ;
 int nvlist_exists_number (int const*,char*) ;
 scalar_t__ nvlist_get_number (int const*,char*) ;

__attribute__((used)) static int
grp_getgrgid(const nvlist_t *limits, const nvlist_t *nvlin, nvlist_t *nvlout)
{
 struct group *grp;
 gid_t gid;

 if (!nvlist_exists_number(nvlin, "gid"))
  return (EINVAL);

 gid = (gid_t)nvlist_get_number(nvlin, "gid");

 errno = 0;
 grp = getgrgid(gid);
 if (errno != 0)
  return (errno);

 (void)grp_pack(limits, grp, nvlout);

 return (0);
}
