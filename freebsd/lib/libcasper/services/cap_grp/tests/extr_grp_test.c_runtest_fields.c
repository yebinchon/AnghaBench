
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group {int dummy; } ;
typedef int cap_channel_t ;
typedef int buf ;


 int GID_WHEEL ;
 struct group* cap_getgrent (int *) ;
 int cap_getgrent_r (int *,struct group*,char*,int,struct group**) ;
 struct group* cap_getgrgid (int *,int ) ;
 int cap_getgrgid_r (int *,int ,struct group*,char*,int,struct group**) ;
 struct group* cap_getgrnam (int *,char*) ;
 int cap_getgrnam_r (int *,char*,struct group*,char*,int,struct group**) ;
 int cap_setgrent (int *) ;
 unsigned int group_fields (struct group*) ;

__attribute__((used)) static bool
runtest_fields(cap_channel_t *capgrp, unsigned int expected)
{
 char buf[1024];
 struct group *grp;
 struct group st;

 (void)cap_setgrent(capgrp);
 grp = cap_getgrent(capgrp);
 if (group_fields(grp) != expected)
  return (0);

 (void)cap_setgrent(capgrp);
 cap_getgrent_r(capgrp, &st, buf, sizeof(buf), &grp);
 if (group_fields(grp) != expected)
  return (0);

 grp = cap_getgrnam(capgrp, "wheel");
 if (group_fields(grp) != expected)
  return (0);

 cap_getgrnam_r(capgrp, "wheel", &st, buf, sizeof(buf), &grp);
 if (group_fields(grp) != expected)
  return (0);

 grp = cap_getgrgid(capgrp, GID_WHEEL);
 if (group_fields(grp) != expected)
  return (0);

 cap_getgrgid_r(capgrp, GID_WHEEL, &st, buf, sizeof(buf), &grp);
 if (group_fields(grp) != expected)
  return (0);

 return (1);
}
