
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group {int dummy; } ;
typedef int gid_t ;
typedef int cap_channel_t ;


 int cap_getgrcommon_r (int *,char const*,char const*,int ,int *,int ,int ,struct group**) ;
 int errno ;
 int gbuffer ;
 int gbufsize ;
 int ggrp ;

__attribute__((used)) static struct group *
cap_getgrcommon(cap_channel_t *chan, const char *cmd, const char *name,
    gid_t gid)
{
 struct group *result;
 int error, serrno;

 serrno = errno;

 error = cap_getgrcommon_r(chan, cmd, name, gid, &ggrp, gbuffer,
     gbufsize, &result);
 if (error != 0) {
  errno = error;
  return (((void*)0));
 }

 errno = serrno;

 return (result);
}
