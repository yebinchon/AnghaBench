
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {int pw_shell; int pw_dir; int pw_gecos; int pw_passwd; } ;


 int free (int ) ;
 int memset (struct passwd*,int ,int) ;

__attribute__((used)) static void
compat_clear_template(struct passwd *template)
{

 free(template->pw_passwd);
 free(template->pw_gecos);
 free(template->pw_dir);
 free(template->pw_shell);
 memset(template, 0, sizeof(*template));
}
