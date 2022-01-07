
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group {scalar_t__ const gr_gid; int gr_name; } ;
typedef scalar_t__ gid_t ;
typedef int cap_channel_t ;
typedef int buf ;


 struct group* cap_getgrent (int *) ;
 int cap_getgrent_r (int *,struct group*,char*,int,struct group**) ;
 struct group* cap_getgrgid (int *,scalar_t__ const) ;
 int cap_getgrgid_r (int *,scalar_t__ const,struct group*,char*,int,struct group**) ;
 struct group* cap_getgrnam (int *,char const*) ;
 int cap_getgrnam_r (int *,char const*,struct group*,char*,int,struct group**) ;
 int cap_setgrent (int *) ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static bool
runtest_groups(cap_channel_t *capgrp, const char **names, const gid_t *gids,
    size_t ngroups)
{
 char buf[1024];
 struct group *grp;
 struct group st;
 unsigned int i, got;

 (void)cap_setgrent(capgrp);
 got = 0;
 for (;;) {
  grp = cap_getgrent(capgrp);
  if (grp == ((void*)0))
   break;
  got++;
  for (i = 0; i < ngroups; i++) {
   if (strcmp(names[i], grp->gr_name) == 0 &&
       gids[i] == grp->gr_gid) {
    break;
   }
  }
  if (i == ngroups)
   return (0);
 }
 if (got != ngroups)
  return (0);

 (void)cap_setgrent(capgrp);
 got = 0;
 for (;;) {
  cap_getgrent_r(capgrp, &st, buf, sizeof(buf), &grp);
  if (grp == ((void*)0))
   break;
  got++;
  for (i = 0; i < ngroups; i++) {
   if (strcmp(names[i], grp->gr_name) == 0 &&
       gids[i] == grp->gr_gid) {
    break;
   }
  }
  if (i == ngroups)
   return (0);
 }
 if (got != ngroups)
  return (0);

 for (i = 0; i < ngroups; i++) {
  grp = cap_getgrnam(capgrp, names[i]);
  if (grp == ((void*)0))
   return (0);
 }

 for (i = 0; i < ngroups; i++) {
  cap_getgrnam_r(capgrp, names[i], &st, buf, sizeof(buf), &grp);
  if (grp == ((void*)0))
   return (0);
 }

 for (i = 0; i < ngroups; i++) {
  grp = cap_getgrgid(capgrp, gids[i]);
  if (grp == ((void*)0))
   return (0);
 }

 for (i = 0; i < ngroups; i++) {
  cap_getgrgid_r(capgrp, gids[i], &st, buf, sizeof(buf), &grp);
  if (grp == ((void*)0))
   return (0);
 }

 return (1);
}
