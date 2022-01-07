
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group {int dummy; } ;
typedef int gid_t ;
typedef int cap_channel_t ;


 int cap_getgrcommon_r (int *,char*,int *,int ,struct group*,char*,size_t,struct group**) ;

int
cap_getgrgid_r(cap_channel_t *chan, gid_t gid, struct group *grp, char *buffer,
    size_t bufsize, struct group **result)
{

 return (cap_getgrcommon_r(chan, "getgrgid_r", ((void*)0), gid, grp, buffer,
     bufsize, result));
}
