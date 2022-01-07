
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int EINVAL ;
 int ENOTCAPABLE ;
 int NV_TYPE_NULL ;
 int grp_allowed_field (int const*,char const*) ;
 char* nvlist_next (int const*,int*,void**) ;

__attribute__((used)) static int
grp_allowed_fields(const nvlist_t *oldlimits, const nvlist_t *newlimits)
{
 const char *name;
 void *cookie;
 int type;

 cookie = ((void*)0);
 while ((name = nvlist_next(newlimits, &type, &cookie)) != ((void*)0)) {
  if (type != NV_TYPE_NULL)
   return (EINVAL);
  if (!grp_allowed_field(oldlimits, name))
   return (ENOTCAPABLE);
 }

 return (0);
}
