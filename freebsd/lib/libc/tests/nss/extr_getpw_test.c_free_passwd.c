
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {int pw_shell; int pw_dir; int pw_gecos; int pw_class; int pw_passwd; int pw_name; } ;


 int free (int ) ;

__attribute__((used)) static void
free_passwd(struct passwd *pwd)
{
 free(pwd->pw_name);
 free(pwd->pw_passwd);
 free(pwd->pw_class);
 free(pwd->pw_gecos);
 free(pwd->pw_dir);
 free(pwd->pw_shell);
}
