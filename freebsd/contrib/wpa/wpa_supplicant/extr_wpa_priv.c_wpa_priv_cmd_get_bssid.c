
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char u8 ;
struct wpa_priv_interface {int fd; int * drv_priv; TYPE_1__* driver; } ;
struct sockaddr_un {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
struct TYPE_2__ {scalar_t__ (* get_bssid ) (int *,char*) ;} ;


 int ETH_ALEN ;
 int sendto (int ,char*,int,int ,struct sockaddr*,int ) ;
 scalar_t__ stub1 (int *,char*) ;

__attribute__((used)) static void wpa_priv_cmd_get_bssid(struct wpa_priv_interface *iface,
       struct sockaddr_un *from, socklen_t fromlen)
{
 u8 bssid[ETH_ALEN];

 if (iface->drv_priv == ((void*)0))
  goto fail;

 if (iface->driver->get_bssid == ((void*)0) ||
     iface->driver->get_bssid(iface->drv_priv, bssid) < 0)
  goto fail;

 sendto(iface->fd, bssid, ETH_ALEN, 0, (struct sockaddr *) from,
        fromlen);
 return;

fail:
 sendto(iface->fd, "", 0, 0, (struct sockaddr *) from, fromlen);
}
