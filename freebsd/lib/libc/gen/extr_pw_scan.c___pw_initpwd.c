
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
struct passwd {char* pw_name; char* pw_passwd; char* pw_class; char* pw_gecos; char* pw_dir; char* pw_shell; scalar_t__ pw_gid; scalar_t__ pw_uid; } ;
typedef scalar_t__ gid_t ;


 int memset (struct passwd*,int ,int) ;

void
__pw_initpwd(struct passwd *pwd)
{
 static char nul[] = "";

 memset(pwd, 0, sizeof(*pwd));
 pwd->pw_uid = (uid_t)-1;
 pwd->pw_gid = (gid_t)-1;
 pwd->pw_name = nul;
 pwd->pw_passwd = nul;
 pwd->pw_class = nul;
 pwd->pw_gecos = nul;
 pwd->pw_dir = nul;
 pwd->pw_shell = nul;
}
