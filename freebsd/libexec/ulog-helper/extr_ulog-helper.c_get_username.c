
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
struct passwd {scalar_t__ pw_uid; char const* pw_name; } ;


 char* getlogin () ;
 struct passwd* getpwnam (char const*) ;
 struct passwd* getpwuid (scalar_t__) ;
 scalar_t__ getuid () ;

__attribute__((used)) static const char *
get_username(void)
{
 const struct passwd *pw;
 const char *login;
 uid_t uid;







 uid = getuid();
 if ((login = getlogin()) != ((void*)0) && (pw = getpwnam(login)) != ((void*)0) &&
     pw->pw_uid == uid)
  return (login);
 if ((pw = getpwuid(uid)) != ((void*)0))
  return (pw->pw_name);
 return (((void*)0));
}
