
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostent {int dummy; } ;
typedef int cap_channel_t ;


 int AF_INET ;
 struct hostent* cap_gethostbyname2 (int *,char const*,int ) ;

struct hostent *
cap_gethostbyname(cap_channel_t *chan, const char *name)
{

 return (cap_gethostbyname2(chan, name, AF_INET));
}
