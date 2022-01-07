
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct passwd {int pw_uid; } ;


 int EX_NOUSER ;
 int atoi (char*) ;
 int errx (int ,char*,char*) ;
 struct passwd* getpwnam (char*) ;
 scalar_t__ isdigit (char) ;

uid_t
a_uid(char *s)
{
 struct passwd *pw;
 char *uname;
 uid_t uid;

 if ((pw = getpwnam(s)) != ((void*)0))
  uid = pw->pw_uid;
 else {
  for (uname = s; *s && isdigit(*s); ++s);
  if (!*s)
   uid = atoi(uname);
  else
   errx(EX_NOUSER, "unknown user id: %s", uname);
 }
 return (uid);
}
