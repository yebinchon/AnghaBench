
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
struct passwd {scalar_t__ const pw_uid; int pw_name; } ;
typedef int cap_channel_t ;
typedef int buf ;


 struct passwd* cap_getpwent (int *) ;
 int cap_getpwent_r (int *,struct passwd*,char*,int,struct passwd**) ;
 struct passwd* cap_getpwnam (int *,char const*) ;
 int cap_getpwnam_r (int *,char const*,struct passwd*,char*,int,struct passwd**) ;
 struct passwd* cap_getpwuid (int *,scalar_t__ const) ;
 int cap_getpwuid_r (int *,scalar_t__ const,struct passwd*,char*,int,struct passwd**) ;
 int cap_setpwent (int *) ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static bool
runtest_users(cap_channel_t *cappwd, const char **names, const uid_t *uids,
    size_t nusers)
{
 char buf[1024];
 struct passwd *pwd;
 struct passwd st;
 unsigned int i, got;

 cap_setpwent(cappwd);
 got = 0;
 for (;;) {
  pwd = cap_getpwent(cappwd);
  if (pwd == ((void*)0))
   break;
  got++;
  for (i = 0; i < nusers; i++) {
   if (strcmp(names[i], pwd->pw_name) == 0 &&
       uids[i] == pwd->pw_uid) {
    break;
   }
  }
  if (i == nusers)
   return (0);
 }
 if (got != nusers)
  return (0);

 cap_setpwent(cappwd);
 got = 0;
 for (;;) {
  cap_getpwent_r(cappwd, &st, buf, sizeof(buf), &pwd);
  if (pwd == ((void*)0))
   break;
  got++;
  for (i = 0; i < nusers; i++) {
   if (strcmp(names[i], pwd->pw_name) == 0 &&
       uids[i] == pwd->pw_uid) {
    break;
   }
  }
  if (i == nusers)
   return (0);
 }
 if (got != nusers)
  return (0);

 for (i = 0; i < nusers; i++) {
  pwd = cap_getpwnam(cappwd, names[i]);
  if (pwd == ((void*)0))
   return (0);
 }

 for (i = 0; i < nusers; i++) {
  cap_getpwnam_r(cappwd, names[i], &st, buf, sizeof(buf), &pwd);
  if (pwd == ((void*)0))
   return (0);
 }

 for (i = 0; i < nusers; i++) {
  pwd = cap_getpwuid(cappwd, uids[i]);
  if (pwd == ((void*)0))
   return (0);
 }

 for (i = 0; i < nusers; i++) {
  cap_getpwuid_r(cappwd, uids[i], &st, buf, sizeof(buf), &pwd);
  if (pwd == ((void*)0))
   return (0);
 }

 return (1);
}
