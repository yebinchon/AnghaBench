
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef int nvlist_t ;


 int EINVAL ;
 int ENOTCAPABLE ;


 int nvlist_get_number (int const*,char const*) ;
 char* nvlist_get_string (int const*,char const*) ;
 char* nvlist_next (int const*,int*,void**) ;
 int pwd_allowed_user (int const*,char const*,int ) ;

__attribute__((used)) static int
pwd_allowed_users(const nvlist_t *oldlimits, const nvlist_t *newlimits)
{
 const char *name, *uname;
 void *cookie;
 uid_t uid;
 int type;

 cookie = ((void*)0);
 while ((name = nvlist_next(newlimits, &type, &cookie)) != ((void*)0)) {
  switch (type) {
  case 129:
   uid = (uid_t)nvlist_get_number(newlimits, name);
   uname = ((void*)0);
   break;
  case 128:
   uid = (uid_t)-1;
   uname = nvlist_get_string(newlimits, name);
   break;
  default:
   return (EINVAL);
  }
  if (!pwd_allowed_user(oldlimits, uname, uid))
   return (ENOTCAPABLE);
 }

 return (0);
}
