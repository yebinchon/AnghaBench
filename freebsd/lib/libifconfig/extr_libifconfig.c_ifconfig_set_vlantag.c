
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
 int SIOCSETVLAN ;
 int bzero (struct vlanreq*,int) ;
 int ifconfig_ioctlwrap (int *,int ,int ,struct ifreq*) ;
 int strlcpy (int ,char const*,int) ;

int
ifconfig_set_vlantag(ifconfig_handle_t *h, const char *name,
    const char *vlandev, const unsigned short vlantag)
{
 struct ifreq ifr;
 struct vlanreq params;

 bzero(&params, sizeof(params));
 params.vlr_tag = vlantag;
 strlcpy(params.vlr_parent, vlandev, sizeof(params.vlr_parent));

 ifr.ifr_data = (caddr_t)&params;
 (void)strlcpy(ifr.ifr_name, name, sizeof(ifr.ifr_name));
 if (ifconfig_ioctlwrap(h, AF_LOCAL, SIOCSETVLAN, &ifr) == -1) {
  return (-1);
 }
 return (0);
}
