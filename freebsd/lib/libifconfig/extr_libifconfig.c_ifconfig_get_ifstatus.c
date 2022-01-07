
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifstat {int ifs_name; } ;
typedef int ifconfig_handle_t ;


 int AF_LOCAL ;
 int SIOCGIFSTATUS ;
 int ifconfig_ioctlwrap (int *,int ,int ,struct ifstat*) ;
 int strlcpy (int ,char const*,int) ;

int
ifconfig_get_ifstatus(ifconfig_handle_t *h, const char *name,
    struct ifstat *ifs)
{
 strlcpy(ifs->ifs_name, name, sizeof(ifs->ifs_name));
 return (ifconfig_ioctlwrap(h, AF_LOCAL, SIOCGIFSTATUS, ifs));
}
