
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group {int gr_gid; } ;
typedef int gid_t ;


 int EX_NOUSER ;
 int atoi (char*) ;
 int errx (int ,char*,char*) ;
 struct group* getgrnam (char*) ;
 scalar_t__ isdigit (char) ;

gid_t
a_gid(char *s)
{
 struct group *gr;
 char *gname;
 gid_t gid;

 if ((gr = getgrnam(s)) != ((void*)0))
  gid = gr->gr_gid;
 else {
  for (gname = s; *s && isdigit(*s); ++s);
  if (!*s)
   gid = atoi(gname);
  else
   errx(EX_NOUSER, "unknown group id: %s", gname);
 }
 return (gid);
}
