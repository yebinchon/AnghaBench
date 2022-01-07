
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {struct passwd* pw_shell; struct passwd* pw_dir; struct passwd* pw_passwd; struct passwd* pw_name; } ;


 int free (struct passwd*) ;

__attribute__((used)) static void
free_info(struct passwd *p)
{
    free (p->pw_name);
    free (p->pw_passwd);
    free (p->pw_dir);
    free (p->pw_shell);
    free (p);
}
