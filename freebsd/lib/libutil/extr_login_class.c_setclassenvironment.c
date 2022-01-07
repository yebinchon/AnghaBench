
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {char* pw_dir; char* pw_name; } ;
struct login_vars {char const* var; int overwrite; char* def; int * tag; } ;
typedef int login_cap_t ;


 struct login_vars* envars ;
 int free (char*) ;
 char** login_getcaplist (int *,char*,char*) ;
 char* login_getcapstr (int *,int *,int *,int *) ;
 char* login_getpath (int *,int *,int *) ;
 struct login_vars* pathvars ;
 int setenv (char const*,char*,int) ;
 char* strchr (char const*,char) ;
 int strlen (char*) ;
 char* substvar (char const*,struct passwd const*,int,char,int) ;

void
setclassenvironment(login_cap_t *lc, const struct passwd * pwd, int paths)
{
    struct login_vars *vars = paths ? pathvars : envars;
    int hlen = pwd ? strlen(pwd->pw_dir) : 0;
    int nlen = pwd ? strlen(pwd->pw_name) : 0;
    char pch = 0;

    if (hlen && pwd->pw_dir[hlen-1] != '/')
 ++pch;

    while (vars->tag != ((void*)0)) {
 const char * var = paths ? login_getpath(lc, vars->tag, ((void*)0))
     : login_getcapstr(lc, vars->tag, ((void*)0), ((void*)0));

 char * np = substvar(var, pwd, hlen, pch, nlen);

 if (np != ((void*)0)) {
     setenv(vars->var, np, vars->overwrite);
     free(np);
 } else if (vars->def != ((void*)0)) {
     setenv(vars->var, vars->def, 0);
 }
 ++vars;
    }





    if (!paths) {
 const char **set_env = login_getcaplist(lc, "setenv", ",");

 if (set_env != ((void*)0)) {
     while (*set_env != ((void*)0)) {
  char *p = strchr(*set_env, '=');

  if (p != ((void*)0)) {
      char *np;

      *p++ = '\0';
      if ((np = substvar(p, pwd, hlen, pch, nlen)) != ((void*)0)) {
   setenv(*set_env, np, 1);
   free(np);
      }
  }
  ++set_env;
     }
 }
    }
}
