
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlanreq {unsigned short vlr_tag; int vlr_parent; } ;
struct ifreq {int ifr_name; scalar_t__ ifr_data; } ;
typedef int params ;
typedef int ifconfig_handle_t ;
typedef scalar_t__ caddr_t ;


 int AF_LOCAL ;
 unsigned short const NOTAG ;
 int SIOCIFCREATE2 ;
 int bzero (struct vlanreq*,int) ;
 scalar_t__ ifconfig_ioctlwrap (int *,int ,int ,struct ifreq*) ;
 char* strdup (int ) ;
 int strlcpy (int ,char const*,int) ;

int
ifconfig_create_interface_vlan(ifconfig_handle_t *h, const char *name,
    char **ifname, const char *vlandev, const unsigned short vlantag)
{
 struct ifreq ifr;
 struct vlanreq params;

 if ((vlantag == NOTAG) || (vlandev[0] == '\0')) {

  return (-1);
 }

 bzero(&params, sizeof(params));
 (void)strlcpy(ifr.ifr_name, name, sizeof(ifr.ifr_name));
 params.vlr_tag = vlantag;
 (void)strlcpy(params.vlr_parent, vlandev, sizeof(params.vlr_parent));
 ifr.ifr_data = (caddr_t)&params;

 if (ifconfig_ioctlwrap(h, AF_LOCAL, SIOCIFCREATE2, &ifr) < 0) {

  return (-1);
 }

 *ifname = strdup(ifr.ifr_name);
 return (0);
}
