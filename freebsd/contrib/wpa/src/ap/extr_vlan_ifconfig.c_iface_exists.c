
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int if_nametoindex (char const*) ;

int iface_exists(const char *ifname)
{
 return if_nametoindex(ifname);
}
