
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;
typedef int gid_t ;


 int EINVAL ;
 int ENOTCAPABLE ;


 int grp_allowed_group (int const*,char const*,int ) ;
 int nvlist_get_number (int const*,char const*) ;
 char* nvlist_get_string (int const*,char const*) ;
 char* nvlist_next (int const*,int*,void**) ;

__attribute__((used)) static int
grp_allowed_groups(const nvlist_t *oldlimits, const nvlist_t *newlimits)
{
 const char *name, *gname;
 void *cookie;
 gid_t gid;
 int type;

 cookie = ((void*)0);
 while ((name = nvlist_next(newlimits, &type, &cookie)) != ((void*)0)) {
  switch (type) {
  case 129:
   gid = (gid_t)nvlist_get_number(newlimits, name);
   gname = ((void*)0);
   break;
  case 128:
   gid = (gid_t)-1;
   gname = nvlist_get_string(newlimits, name);
   break;
  default:
   return (EINVAL);
  }
  if (!grp_allowed_group(oldlimits, gname, gid))
   return (ENOTCAPABLE);
 }

 return (0);
}
