
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group {int gr_gid; } ;
typedef int gid_t ;


 int errx (int,char*) ;
 struct group* getgrnam (char const*) ;
 int id (char const*,char*) ;

__attribute__((used)) static gid_t
a_gid(const char *s)
{
 struct group *gr;

 if (*s == '\0')
  errx(1, "group must be specified when the owner is");
 return ((gr = getgrnam(s)) == ((void*)0)) ? id(s, "group") : gr->gr_gid;
}
