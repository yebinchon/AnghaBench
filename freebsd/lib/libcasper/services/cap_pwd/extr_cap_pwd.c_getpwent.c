
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {int dummy; } ;
typedef int cap_channel_t ;


 struct passwd* cap_getpwcommon (int *,char*,int *,int ) ;

struct passwd *
cap_getpwent(cap_channel_t *chan)
{

 return (cap_getpwcommon(chan, "getpwent", ((void*)0), 0));
}
