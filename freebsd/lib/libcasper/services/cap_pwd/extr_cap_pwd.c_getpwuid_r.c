
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct passwd {int dummy; } ;
typedef int cap_channel_t ;


 int cap_getpwcommon_r (int *,char*,int *,int ,struct passwd*,char*,size_t,struct passwd**) ;

int
cap_getpwuid_r(cap_channel_t *chan, uid_t uid, struct passwd *pwd, char *buffer,
    size_t bufsize, struct passwd **result)
{

 return (cap_getpwcommon_r(chan, "getpwuid_r", ((void*)0), uid, pwd, buffer,
     bufsize, result));
}
