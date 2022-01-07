
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uid_t ;
typedef int nvlist_t ;




 int abort () ;
 int nvlist_exists_nvlist (int const*,char*) ;
 int nvlist_get_number (int const*,char const*) ;
 int * nvlist_get_nvlist (int const*,char*) ;
 int nvlist_get_string (int const*,char const*) ;
 char* nvlist_next (int const*,int*,void**) ;
 int strcmp (int ,char const*) ;

__attribute__((used)) static bool
pwd_allowed_user(const nvlist_t *limits, const char *uname, uid_t uid)
{
 const char *name;
 void *cookie;
 int type;

 if (limits == ((void*)0))
  return (1);




 if (!nvlist_exists_nvlist(limits, "users"))
  return (1);

 limits = nvlist_get_nvlist(limits, "users");
 cookie = ((void*)0);
 while ((name = nvlist_next(limits, &type, &cookie)) != ((void*)0)) {
  switch (type) {
  case 129:
   if (uid != (uid_t)-1 &&
       nvlist_get_number(limits, name) == (uint64_t)uid) {
    return (1);
   }
   break;
  case 128:
   if (uname != ((void*)0) &&
       strcmp(nvlist_get_string(limits, name),
       uname) == 0) {
    return (1);
   }
   break;
  default:
   abort();
  }
 }

 return (0);
}
