
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {int * pw_shell; int * pw_dir; int * pw_passwd; int * pw_name; int pw_gid; int pw_uid; } ;


 int free_info (struct passwd*) ;
 struct passwd* malloc (int) ;
 void* strdup (int *) ;

__attribute__((used)) static struct passwd*
dup_info(const struct passwd *pwd)
{
    struct passwd *info;

    info = malloc(sizeof(*info));
    if(info == ((void*)0))
 return ((void*)0);
    info->pw_name = strdup(pwd->pw_name);
    info->pw_passwd = strdup(pwd->pw_passwd);
    info->pw_uid = pwd->pw_uid;
    info->pw_gid = pwd->pw_gid;
    info->pw_dir = strdup(pwd->pw_dir);
    info->pw_shell = strdup(pwd->pw_shell);
    if(info->pw_name == ((void*)0) || info->pw_passwd == ((void*)0) ||
       info->pw_dir == ((void*)0) || info->pw_shell == ((void*)0)) {
 free_info (info);
 return ((void*)0);
    }
    return info;
}
