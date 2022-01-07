
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct passwd {int dummy; } ;
typedef int cap_channel_t ;


 struct passwd* cap_getpwcommon (int *,char*,int *,int ) ;

struct passwd *
cap_getpwuid(cap_channel_t *chan, uid_t uid)
{

 return (cap_getpwcommon(chan, "getpwuid", ((void*)0), uid));
}
