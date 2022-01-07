
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lagg_reqport {int rp_portname; int rp_ifname; } ;
typedef int ifconfig_handle_t ;


 int AF_LOCAL ;
 int SIOCGLAGGPORT ;
 int ifconfig_ioctlwrap (int *,int ,int ,struct lagg_reqport*) ;
 int strlcpy (int ,char const*,int) ;

int
ifconfig_lagg_get_laggport_status(ifconfig_handle_t *h,
    const char *name, struct lagg_reqport *rp)
{
 strlcpy(rp->rp_ifname, name, sizeof(rp->rp_portname));
 strlcpy(rp->rp_portname, name, sizeof(rp->rp_portname));

 return (ifconfig_ioctlwrap(h, AF_LOCAL, SIOCGLAGGPORT, rp));
}
