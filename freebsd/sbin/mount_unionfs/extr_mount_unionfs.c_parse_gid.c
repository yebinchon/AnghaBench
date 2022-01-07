
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group {int gr_gid; } ;


 int EX_NOUSER ;
 int errx (int ,char*,char const*) ;
 struct group* getgrnam (char const*) ;
 int snprintf (char*,size_t,char*,int) ;
 int strncpy (char*,char const*,size_t) ;
 int strtol (char const*,char**,int) ;
 int usage () ;

__attribute__((used)) static void
parse_gid(const char *s, char *buf, size_t bufsize)
{
 struct group *gr;
 char *inval;

 if ((gr = getgrnam(s)) != ((void*)0))
  snprintf(buf, bufsize, "%d", gr->gr_gid);
 else {
  strtol(s, &inval, 10);
  if (*inval != 0) {
                       errx(EX_NOUSER, "unknown group id: %s", s);
                       usage();
  } else {
   strncpy(buf, s, bufsize);
  }
 }
}
