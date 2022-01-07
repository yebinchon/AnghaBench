
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {int dummy; } ;
typedef int cap_channel_t ;
typedef int buf ;


 int UID_ROOT ;
 struct passwd* cap_getpwent (int *) ;
 int cap_getpwent_r (int *,struct passwd*,char*,int,struct passwd**) ;
 struct passwd* cap_getpwnam (int *,char*) ;
 int cap_getpwnam_r (int *,char*,struct passwd*,char*,int,struct passwd**) ;
 struct passwd* cap_getpwuid (int *,int ) ;
 int cap_getpwuid_r (int *,int ,struct passwd*,char*,int,struct passwd**) ;
 int cap_setpwent (int *) ;
 unsigned int passwd_fields (struct passwd*) ;

__attribute__((used)) static bool
runtest_fields(cap_channel_t *cappwd, unsigned int expected)
{
 char buf[1024];
 struct passwd *pwd;
 struct passwd st;


 cap_setpwent(cappwd);
 pwd = cap_getpwent(cappwd);
 if ((passwd_fields(pwd) & ~expected) != 0)
  return (0);

 cap_setpwent(cappwd);
 cap_getpwent_r(cappwd, &st, buf, sizeof(buf), &pwd);
 if ((passwd_fields(pwd) & ~expected) != 0)
  return (0);

 pwd = cap_getpwnam(cappwd, "root");
 if ((passwd_fields(pwd) & ~expected) != 0)
  return (0);

 cap_getpwnam_r(cappwd, "root", &st, buf, sizeof(buf), &pwd);
 if ((passwd_fields(pwd) & ~expected) != 0)
  return (0);

 pwd = cap_getpwuid(cappwd, UID_ROOT);
 if ((passwd_fields(pwd) & ~expected) != 0)
  return (0);

 cap_getpwuid_r(cappwd, UID_ROOT, &st, buf, sizeof(buf), &pwd);
 if ((passwd_fields(pwd) & ~expected) != 0)
  return (0);

 return (1);
}
