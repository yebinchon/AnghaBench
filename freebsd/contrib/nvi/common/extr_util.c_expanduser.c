
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {char* pw_dir; } ;


 int free (char*) ;
 char* getenv (char*) ;
 char* getlogin () ;
 struct passwd* getpwnam (char*) ;
 struct passwd* getpwuid (int ) ;
 int getuid () ;
 scalar_t__ issetugid () ;
 char* join (char*,char*) ;
 char* strndup (char*,int) ;

char *
expanduser(char *str)
{
 struct passwd *pwd;
 char *p, *t, *u, *h;






 if (*str != '~')
  return (((void*)0));
 p = str + 1;
 for (t = p; *t != '/' && *t != '\0'; ++t)
  continue;
 if (t == p) {

  if (issetugid() != 0 ||
      (h = getenv("HOME")) == ((void*)0)) {
   if (((h = getlogin()) != ((void*)0) &&
        (pwd = getpwnam(h)) != ((void*)0)) ||
       (pwd = getpwuid(getuid())) != ((void*)0))
    h = pwd->pw_dir;
   else
    return (((void*)0));
  }
 } else {

  if ((u = strndup(p, t - p)) == ((void*)0))
   return (((void*)0));
  if ((pwd = getpwnam(u)) == ((void*)0)) {
   free(u);
   return (((void*)0));
  } else
   h = pwd->pw_dir;
  free(u);
 }

 for (; *t == '/' && *t != '\0'; ++t)
  continue;
 return (join(h, t));
}
