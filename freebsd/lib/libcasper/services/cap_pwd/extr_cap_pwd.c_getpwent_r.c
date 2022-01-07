
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {int dummy; } ;
typedef int cap_channel_t ;


 int cap_getpwcommon_r (int *,char*,int *,int ,struct passwd*,char*,size_t,struct passwd**) ;

int
cap_getpwent_r(cap_channel_t *chan, struct passwd *pwd, char *buffer,
    size_t bufsize, struct passwd **result)
{

 return (cap_getpwcommon_r(chan, "getpwent_r", ((void*)0), 0, pwd, buffer,
     bufsize, result));
}
