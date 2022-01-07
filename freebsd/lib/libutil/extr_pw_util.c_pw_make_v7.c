
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct passwd {int pw_shell; int pw_dir; int pw_gecos; scalar_t__ pw_gid; scalar_t__ pw_uid; int pw_name; } ;


 int asprintf (char**,char*,int ,int ,int ,int ,int ,int ) ;

char *
pw_make_v7(const struct passwd *pw)
{
 char *line;

 asprintf(&line, "%s:*:%ju:%ju:%s:%s:%s", pw->pw_name,
     (uintmax_t)pw->pw_uid, (uintmax_t)pw->pw_gid,
     pw->pw_gecos, pw->pw_dir, pw->pw_shell);
 return (line);
}
