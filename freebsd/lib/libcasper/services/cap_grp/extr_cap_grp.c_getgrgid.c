
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct group {int dummy; } ;
typedef int gid_t ;
typedef int cap_channel_t ;


 struct group* cap_getgrcommon (int *,char*,int *,int ) ;

struct group *
cap_getgrgid(cap_channel_t *chan, gid_t gid)
{

 return (cap_getgrcommon(chan, "getgrgid", ((void*)0), gid));
}
