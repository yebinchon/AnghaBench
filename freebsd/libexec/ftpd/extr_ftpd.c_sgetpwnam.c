
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {void* pw_shell; void* pw_dir; void* pw_gecos; void* pw_class; void* pw_passwd; void* pw_name; } ;


 int free (void*) ;
 struct passwd* getpwnam (char*) ;
 void* sgetsave (void*) ;

__attribute__((used)) static struct passwd *
sgetpwnam(char *name)
{
 static struct passwd save;
 struct passwd *p;

 if ((p = getpwnam(name)) == ((void*)0))
  return (p);
 if (save.pw_name) {
  free(save.pw_name);
  free(save.pw_passwd);
  free(save.pw_class);
  free(save.pw_gecos);
  free(save.pw_dir);
  free(save.pw_shell);
 }
 save = *p;
 save.pw_name = sgetsave(p->pw_name);
 save.pw_passwd = sgetsave(p->pw_passwd);
 save.pw_class = sgetsave(p->pw_class);
 save.pw_gecos = sgetsave(p->pw_gecos);
 save.pw_dir = sgetsave(p->pw_dir);
 save.pw_shell = sgetsave(p->pw_shell);
 return (&save);
}
