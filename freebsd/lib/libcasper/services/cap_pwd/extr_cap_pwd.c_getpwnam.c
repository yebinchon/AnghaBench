
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {int dummy; } ;
typedef int cap_channel_t ;


 struct passwd* cap_getpwcommon (int *,char*,char const*,int ) ;

struct passwd *
cap_getpwnam(cap_channel_t *chan, const char *login)
{

 return (cap_getpwcommon(chan, "getpwnam", login, 0));
}
