
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef void* time_t ;
struct passwd {int pw_fields; void* pw_expire; int * pw_shell; int * pw_dir; int * pw_gecos; int * pw_class; void* pw_change; int pw_gid; int pw_uid; int * pw_passwd; int * pw_name; } ;
typedef int gid_t ;


 int ATF_REQUIRE (int ) ;
 int free_passwd (struct passwd*) ;
 int memset (struct passwd*,int ,int) ;
 int printf (char*,char*) ;
 void* strdup (char*) ;
 char* strsep (char**,char*) ;
 scalar_t__ strtol (char*,char**,int) ;

__attribute__((used)) static int
passwd_read_snapshot_func(struct passwd *pwd, char *line)
{
 char *s, *ps, *ts;
 int i;





 i = 0;
 ps = line;
 memset(pwd, 0, sizeof(struct passwd));
 while ((s = strsep(&ps, ":")) != ((void*)0)) {
  switch (i) {
  case 0:
   pwd->pw_name = strdup(s);
   ATF_REQUIRE(pwd->pw_name != ((void*)0));
   break;
  case 1:
   pwd->pw_passwd = strdup(s);
   ATF_REQUIRE(pwd->pw_passwd != ((void*)0));
   break;
  case 2:
   pwd->pw_uid = (uid_t)strtol(s, &ts, 10);
   if (*ts != '\0')
    goto fin;
   break;
  case 3:
   pwd->pw_gid = (gid_t)strtol(s, &ts, 10);
   if (*ts != '\0')
    goto fin;
   break;
  case 4:
   pwd->pw_change = (time_t)strtol(s, &ts, 10);
   if (*ts != '\0')
    goto fin;
   break;
  case 5:
   pwd->pw_class = strdup(s);
   ATF_REQUIRE(pwd->pw_class != ((void*)0));
   break;
  case 6:
   pwd->pw_gecos = strdup(s);
   ATF_REQUIRE(pwd->pw_gecos != ((void*)0));
   break;
  case 7:
   pwd->pw_dir = strdup(s);
   ATF_REQUIRE(pwd->pw_dir != ((void*)0));
   break;
  case 8:
   pwd->pw_shell = strdup(s);
   ATF_REQUIRE(pwd->pw_shell != ((void*)0));
   break;
  case 9:
   pwd->pw_expire = (time_t)strtol(s, &ts, 10);
   if (*ts != '\0')
    goto fin;
   break;
  case 10:
   pwd->pw_fields = (int)strtol(s, &ts, 10);
   if (*ts != '\0')
    goto fin;
   break;
  default:
   break;
  }
  ++i;
 }

fin:
 if (i != 11) {
  free_passwd(pwd);
  memset(pwd, 0, sizeof(struct passwd));
  return (-1);
 }

 return (0);
}
