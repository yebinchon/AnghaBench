
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group {int dummy; } ;
typedef int cap_channel_t ;


 struct group* cap_getgrcommon (int *,char*,int *,int ) ;

struct group *
cap_getgrent(cap_channel_t *chan)
{

 return (cap_getgrcommon(chan, "getgrent", ((void*)0), 0));
}
