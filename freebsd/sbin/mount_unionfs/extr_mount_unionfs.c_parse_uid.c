
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {int pw_uid; } ;


 int EX_NOUSER ;
 int errx (int ,char*,char const*) ;
 struct passwd* getpwnam (char const*) ;
 int snprintf (char*,size_t,char*,int) ;
 int strncpy (char*,char const*,size_t) ;
 int strtol (char const*,char**,int) ;
 int usage () ;

__attribute__((used)) static void
parse_uid(const char *s, char *buf, size_t bufsize)
{
 struct passwd *pw;
 char *inval;

 if ((pw = getpwnam(s)) != ((void*)0))
  snprintf(buf, bufsize, "%d", pw->pw_uid);
 else {
  strtol(s, &inval, 10);
  if (*inval != 0) {
                       errx(EX_NOUSER, "unknown user id: %s", s);
                       usage();
  } else {
   strncpy(buf, s, bufsize);
  }
 }
}
