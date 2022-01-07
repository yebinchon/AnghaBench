
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {int dummy; } ;
typedef int cap_channel_t ;


 int cap_getpwcommon_r (int *,char*,char const*,int ,struct passwd*,char*,size_t,struct passwd**) ;

int
cap_getpwnam_r(cap_channel_t *chan, const char *name, struct passwd *pwd,
    char *buffer, size_t bufsize, struct passwd **result)
{

 return (cap_getpwcommon_r(chan, "getpwnam_r", name, 0, pwd, buffer,
     bufsize, result));
}
