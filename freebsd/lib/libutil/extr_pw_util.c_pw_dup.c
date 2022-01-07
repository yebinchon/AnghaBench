
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {char* pw_name; char* pw_passwd; char* pw_class; char* pw_gecos; char* pw_dir; char* pw_shell; } ;
typedef int ssize_t ;


 struct passwd* malloc (size_t) ;
 int memcpy (struct passwd*,struct passwd const*,int) ;
 char* stpcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;

struct passwd *
pw_dup(const struct passwd *pw)
{
 char *dst;
 struct passwd *npw;
 ssize_t len;

 len = sizeof(*npw);
 if (pw->pw_name != ((void*)0))
  len += strlen(pw->pw_name) + 1;
 if (pw->pw_passwd != ((void*)0))
  len += strlen(pw->pw_passwd) + 1;
 if (pw->pw_class != ((void*)0))
  len += strlen(pw->pw_class) + 1;
 if (pw->pw_gecos != ((void*)0))
  len += strlen(pw->pw_gecos) + 1;
 if (pw->pw_dir != ((void*)0))
  len += strlen(pw->pw_dir) + 1;
 if (pw->pw_shell != ((void*)0))
  len += strlen(pw->pw_shell) + 1;
 if ((npw = malloc((size_t)len)) == ((void*)0))
  return (((void*)0));
 memcpy(npw, pw, sizeof(*npw));
 dst = (char *)npw + sizeof(*npw);
 if (pw->pw_name != ((void*)0)) {
  npw->pw_name = dst;
  dst = stpcpy(npw->pw_name, pw->pw_name) + 1;
 }
 if (pw->pw_passwd != ((void*)0)) {
  npw->pw_passwd = dst;
  dst = stpcpy(npw->pw_passwd, pw->pw_passwd) + 1;
 }
 if (pw->pw_class != ((void*)0)) {
  npw->pw_class = dst;
  dst = stpcpy(npw->pw_class, pw->pw_class) + 1;
 }
 if (pw->pw_gecos != ((void*)0)) {
  npw->pw_gecos = dst;
  dst = stpcpy(npw->pw_gecos, pw->pw_gecos) + 1;
 }
 if (pw->pw_dir != ((void*)0)) {
  npw->pw_dir = dst;
  dst = stpcpy(npw->pw_dir, pw->pw_dir) + 1;
 }
 if (pw->pw_shell != ((void*)0)) {
  npw->pw_shell = dst;
  dst = stpcpy(npw->pw_shell, pw->pw_shell) + 1;
 }
 return (npw);
}
