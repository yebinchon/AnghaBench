
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char u8 ;
struct wpa_priv_interface {int fd; int * drv_priv; TYPE_1__* driver; } ;
struct sockaddr_un {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int ssid ;
typedef int socklen_t ;
struct TYPE_2__ {int (* get_ssid ) (int *,char*) ;} ;


 int SSID_MAX_LEN ;
 int os_memcpy (char*,int*,int) ;
 int os_memset (char*,int ,int) ;
 int sendto (int ,char*,int,int ,struct sockaddr*,int ) ;
 int stub1 (int *,char*) ;

__attribute__((used)) static void wpa_priv_cmd_get_ssid(struct wpa_priv_interface *iface,
      struct sockaddr_un *from, socklen_t fromlen)
{
 u8 ssid[sizeof(int) + SSID_MAX_LEN];
 int res;

 if (iface->drv_priv == ((void*)0))
  goto fail;

 if (iface->driver->get_ssid == ((void*)0))
  goto fail;

 os_memset(ssid, 0, sizeof(ssid));
 res = iface->driver->get_ssid(iface->drv_priv, &ssid[sizeof(int)]);
 if (res < 0 || res > SSID_MAX_LEN)
  goto fail;
 os_memcpy(ssid, &res, sizeof(int));

 sendto(iface->fd, ssid, sizeof(ssid), 0, (struct sockaddr *) from,
        fromlen);
 return;

fail:
 sendto(iface->fd, "", 0, 0, (struct sockaddr *) from, fromlen);
}
