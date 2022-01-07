
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {int dummy; } ;
typedef int cap_channel_t ;
typedef int bufs ;
typedef int bufc ;


 unsigned int GETPWENT0 ;
 unsigned int GETPWENT1 ;
 unsigned int GETPWENT2 ;
 unsigned int GETPWENT_R0 ;
 unsigned int GETPWENT_R1 ;
 unsigned int GETPWENT_R2 ;
 unsigned int GETPWNAM ;
 unsigned int GETPWNAM_R ;
 unsigned int GETPWUID ;
 unsigned int GETPWUID_R ;
 int UID_OPERATOR ;
 int UID_ROOT ;
 struct passwd* cap_getpwent (int *) ;
 int cap_getpwent_r (int *,struct passwd*,char*,int,struct passwd**) ;
 struct passwd* cap_getpwnam (int *,char*) ;
 int cap_getpwnam_r (int *,char*,struct passwd*,char*,int,struct passwd**) ;
 struct passwd* cap_getpwuid (int *,int ) ;
 int cap_getpwuid_r (int *,int ,struct passwd*,char*,int,struct passwd**) ;
 int cap_setpwent (int *) ;
 struct passwd* getpwent () ;
 int getpwent_r (struct passwd*,char*,int,struct passwd**) ;
 struct passwd* getpwnam (char*) ;
 int getpwnam_r (char*,struct passwd*,char*,int,struct passwd**) ;
 struct passwd* getpwuid (int ) ;
 int getpwuid_r (int ,struct passwd*,char*,int,struct passwd**) ;
 scalar_t__ passwd_compare (struct passwd*,struct passwd*) ;
 int setpwent () ;

__attribute__((used)) static unsigned int
runtest_cmds(cap_channel_t *cappwd)
{
 char bufs[1024], bufc[1024];
 unsigned int result;
 struct passwd *pwds, *pwdc;
 struct passwd sts, stc;

 result = 0;

 setpwent();
 cap_setpwent(cappwd);

 pwds = getpwent();
 pwdc = cap_getpwent(cappwd);
 if (passwd_compare(pwds, pwdc)) {
  result |= GETPWENT0;
  pwds = getpwent();
  pwdc = cap_getpwent(cappwd);
  if (passwd_compare(pwds, pwdc))
   result |= GETPWENT1;
 }

 getpwent_r(&sts, bufs, sizeof(bufs), &pwds);
 cap_getpwent_r(cappwd, &stc, bufc, sizeof(bufc), &pwdc);
 if (passwd_compare(pwds, pwdc)) {
  result |= GETPWENT_R0;
  getpwent_r(&sts, bufs, sizeof(bufs), &pwds);
  cap_getpwent_r(cappwd, &stc, bufc, sizeof(bufc), &pwdc);
  if (passwd_compare(pwds, pwdc))
   result |= GETPWENT_R1;
 }

 setpwent();
 cap_setpwent(cappwd);

 getpwent_r(&sts, bufs, sizeof(bufs), &pwds);
 cap_getpwent_r(cappwd, &stc, bufc, sizeof(bufc), &pwdc);
 if (passwd_compare(pwds, pwdc))
  result |= GETPWENT_R2;

 pwds = getpwent();
 pwdc = cap_getpwent(cappwd);
 if (passwd_compare(pwds, pwdc))
  result |= GETPWENT2;

 pwds = getpwnam("root");
 pwdc = cap_getpwnam(cappwd, "root");
 if (passwd_compare(pwds, pwdc)) {
  pwds = getpwnam("operator");
  pwdc = cap_getpwnam(cappwd, "operator");
  if (passwd_compare(pwds, pwdc))
   result |= GETPWNAM;
 }

 getpwnam_r("root", &sts, bufs, sizeof(bufs), &pwds);
 cap_getpwnam_r(cappwd, "root", &stc, bufc, sizeof(bufc), &pwdc);
 if (passwd_compare(pwds, pwdc)) {
  getpwnam_r("operator", &sts, bufs, sizeof(bufs), &pwds);
  cap_getpwnam_r(cappwd, "operator", &stc, bufc, sizeof(bufc),
      &pwdc);
  if (passwd_compare(pwds, pwdc))
   result |= GETPWNAM_R;
 }

 pwds = getpwuid(UID_ROOT);
 pwdc = cap_getpwuid(cappwd, UID_ROOT);
 if (passwd_compare(pwds, pwdc)) {
  pwds = getpwuid(UID_OPERATOR);
  pwdc = cap_getpwuid(cappwd, UID_OPERATOR);
  if (passwd_compare(pwds, pwdc))
   result |= GETPWUID;
 }

 getpwuid_r(UID_ROOT, &sts, bufs, sizeof(bufs), &pwds);
 cap_getpwuid_r(cappwd, UID_ROOT, &stc, bufc, sizeof(bufc), &pwdc);
 if (passwd_compare(pwds, pwdc)) {
  getpwuid_r(UID_OPERATOR, &sts, bufs, sizeof(bufs), &pwds);
  cap_getpwuid_r(cappwd, UID_OPERATOR, &stc, bufc, sizeof(bufc),
      &pwdc);
  if (passwd_compare(pwds, pwdc))
   result |= GETPWUID_R;
 }

 return (result);
}
