
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {void* pw_shell; void* pw_dir; void* pw_class; int pw_change; int pw_expire; int pw_gid; int pw_uid; void* pw_gecos; void* pw_passwd; void* pw_name; } ;


 struct passwd* xcalloc (int,int) ;
 void* xstrdup (void*) ;

struct passwd *
pwcopy(struct passwd *pw)
{
 struct passwd *copy = xcalloc(1, sizeof(*copy));

 copy->pw_name = xstrdup(pw->pw_name);
 copy->pw_passwd = xstrdup(pw->pw_passwd);



 copy->pw_uid = pw->pw_uid;
 copy->pw_gid = pw->pw_gid;
 copy->pw_dir = xstrdup(pw->pw_dir);
 copy->pw_shell = xstrdup(pw->pw_shell);
 return copy;
}
