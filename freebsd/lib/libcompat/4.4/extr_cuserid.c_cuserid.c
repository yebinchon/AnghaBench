
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {char* pw_name; } ;


 int L_cuserid ;
 int geteuid () ;
 struct passwd* getpwuid (int ) ;
 int strncpy (char*,char*,int ) ;

char *
cuserid(char *s)
{
 struct passwd *pwd;

 if ((pwd = getpwuid(geteuid())) == ((void*)0)) {
  if (s)
   *s = '\0';
  return (s);
 }
 if (s) {
  (void)strncpy(s, pwd->pw_name, L_cuserid);
  return (s);
 }
 return (pwd->pw_name);
}
