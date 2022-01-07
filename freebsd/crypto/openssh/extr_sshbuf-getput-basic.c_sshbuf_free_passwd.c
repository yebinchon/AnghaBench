
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {struct passwd* pw_name; struct passwd* pw_passwd; struct passwd* pw_gecos; struct passwd* pw_class; struct passwd* pw_dir; struct passwd* pw_shell; } ;


 int free (struct passwd*) ;

void
sshbuf_free_passwd(struct passwd *pwent)
{
 if (pwent == ((void*)0))
  return;
 free(pwent->pw_shell);
 free(pwent->pw_dir);






 free(pwent->pw_passwd);
 free(pwent->pw_name);
 free(pwent);
}
