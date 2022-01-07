
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct passwd {int pw_uid; } ;


 int errx (int,char*) ;
 struct passwd* getpwnam (char const*) ;
 int id (char const*,char*) ;

__attribute__((used)) static uid_t
a_uid(const char *s)
{
 struct passwd *pw;

 if (*s == '\0')
  errx(1, "owner must be specified when the group is");
 return ((pw = getpwnam(s)) == ((void*)0)) ? id(s, "user") : pw->pw_uid;
}
