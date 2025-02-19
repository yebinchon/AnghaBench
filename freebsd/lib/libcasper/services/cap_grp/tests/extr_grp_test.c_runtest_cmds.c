
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group {int dummy; } ;
typedef int cap_channel_t ;
typedef int bufs ;
typedef int bufc ;


 unsigned int GETGRENT0 ;
 unsigned int GETGRENT1 ;
 unsigned int GETGRENT2 ;
 unsigned int GETGRENT_R0 ;
 unsigned int GETGRENT_R1 ;
 unsigned int GETGRENT_R2 ;
 unsigned int GETGRGID ;
 unsigned int GETGRGID_R ;
 unsigned int GETGRNAM ;
 unsigned int GETGRNAM_R ;
 int GID_OPERATOR ;
 int GID_WHEEL ;
 unsigned int SETGRENT ;
 struct group* cap_getgrent (int *) ;
 int cap_getgrent_r (int *,struct group*,char*,int,struct group**) ;
 struct group* cap_getgrgid (int *,int ) ;
 int cap_getgrgid_r (int *,int ,struct group*,char*,int,struct group**) ;
 struct group* cap_getgrnam (int *,char*) ;
 int cap_getgrnam_r (int *,char*,struct group*,char*,int,struct group**) ;
 int cap_setgrent (int *) ;
 struct group* getgrent () ;
 int getgrent_r (struct group*,char*,int,struct group**) ;
 struct group* getgrgid (int ) ;
 int getgrgid_r (int ,struct group*,char*,int,struct group**) ;
 struct group* getgrnam (char*) ;
 int getgrnam_r (char*,struct group*,char*,int,struct group**) ;
 scalar_t__ group_compare (struct group*,struct group*) ;
 int setgrent () ;

__attribute__((used)) static unsigned int
runtest_cmds(cap_channel_t *capgrp)
{
 char bufs[1024], bufc[1024];
 unsigned int result;
 struct group *grps, *grpc;
 struct group sts, stc;

 result = 0;

 (void)setgrent();
 if (cap_setgrent(capgrp) == 1)
  result |= SETGRENT;

 grps = getgrent();
 grpc = cap_getgrent(capgrp);
 if (group_compare(grps, grpc)) {
  result |= GETGRENT0;
  grps = getgrent();
  grpc = cap_getgrent(capgrp);
  if (group_compare(grps, grpc))
   result |= GETGRENT1;
 }

 getgrent_r(&sts, bufs, sizeof(bufs), &grps);
 cap_getgrent_r(capgrp, &stc, bufc, sizeof(bufc), &grpc);
 if (group_compare(grps, grpc)) {
  result |= GETGRENT_R0;
  getgrent_r(&sts, bufs, sizeof(bufs), &grps);
  cap_getgrent_r(capgrp, &stc, bufc, sizeof(bufc), &grpc);
  if (group_compare(grps, grpc))
   result |= GETGRENT_R1;
 }

 (void)setgrent();
 if (cap_setgrent(capgrp) == 1)
  result |= SETGRENT;

 getgrent_r(&sts, bufs, sizeof(bufs), &grps);
 cap_getgrent_r(capgrp, &stc, bufc, sizeof(bufc), &grpc);
 if (group_compare(grps, grpc))
  result |= GETGRENT_R2;

 grps = getgrent();
 grpc = cap_getgrent(capgrp);
 if (group_compare(grps, grpc))
  result |= GETGRENT2;

 grps = getgrnam("wheel");
 grpc = cap_getgrnam(capgrp, "wheel");
 if (group_compare(grps, grpc)) {
  grps = getgrnam("operator");
  grpc = cap_getgrnam(capgrp, "operator");
  if (group_compare(grps, grpc))
   result |= GETGRNAM;
 }

 getgrnam_r("wheel", &sts, bufs, sizeof(bufs), &grps);
 cap_getgrnam_r(capgrp, "wheel", &stc, bufc, sizeof(bufc), &grpc);
 if (group_compare(grps, grpc)) {
  getgrnam_r("operator", &sts, bufs, sizeof(bufs), &grps);
  cap_getgrnam_r(capgrp, "operator", &stc, bufc, sizeof(bufc),
      &grpc);
  if (group_compare(grps, grpc))
   result |= GETGRNAM_R;
 }

 grps = getgrgid(GID_WHEEL);
 grpc = cap_getgrgid(capgrp, GID_WHEEL);
 if (group_compare(grps, grpc)) {
  grps = getgrgid(GID_OPERATOR);
  grpc = cap_getgrgid(capgrp, GID_OPERATOR);
  if (group_compare(grps, grpc))
   result |= GETGRGID;
 }

 getgrgid_r(GID_WHEEL, &sts, bufs, sizeof(bufs), &grps);
 cap_getgrgid_r(capgrp, GID_WHEEL, &stc, bufc, sizeof(bufc), &grpc);
 if (group_compare(grps, grpc)) {
  getgrgid_r(GID_OPERATOR, &sts, bufs, sizeof(bufs), &grps);
  cap_getgrgid_r(capgrp, GID_OPERATOR, &stc, bufc, sizeof(bufc),
      &grpc);
  if (group_compare(grps, grpc))
   result |= GETGRGID_R;
 }

 return (result);
}
