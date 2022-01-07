
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct passwd {char* pw_name; char* pw_passwd; int pw_uid; int pw_gid; int pw_fields; scalar_t__ pw_expire; int pw_shell; int pw_dir; int pw_gecos; int pw_class; scalar_t__ pw_change; } ;


 int snprintf (char*,size_t,char*,char*,char*,int,int,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void
sdump_passwd(struct passwd *pwd, char *buffer, size_t buflen)
{
 snprintf(buffer, buflen, "%s:%s:%d:%d:%jd:%s:%s:%s:%s:%jd:%d",
     pwd->pw_name, pwd->pw_passwd, pwd->pw_uid, pwd->pw_gid,
     (uintmax_t)pwd->pw_change, pwd->pw_class, pwd->pw_gecos,
     pwd->pw_dir, pwd->pw_shell, (uintmax_t)pwd->pw_expire,
     pwd->pw_fields);
}
