
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group {int dummy; } ;
typedef int cap_channel_t ;


 struct group* cap_getgrcommon (int *,char*,char const*,int ) ;

struct group *
cap_getgrnam(cap_channel_t *chan, const char *name)
{

 return (cap_getgrcommon(chan, "getgrnam", name, 0));
}
