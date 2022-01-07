
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_priv_interface {int fd; TYPE_1__* driver; int * drv_priv; } ;
struct sockaddr_un {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
struct TYPE_2__ {scalar_t__ get_scan_results2; } ;


 int sendto (int ,char*,int ,int ,struct sockaddr*,int ) ;
 int wpa_priv_get_scan_results2 (struct wpa_priv_interface*,struct sockaddr_un*,int ) ;

__attribute__((used)) static void wpa_priv_cmd_get_scan_results(struct wpa_priv_interface *iface,
       struct sockaddr_un *from,
       socklen_t fromlen)
{
 if (iface->drv_priv == ((void*)0))
  return;

 if (iface->driver->get_scan_results2)
  wpa_priv_get_scan_results2(iface, from, fromlen);
 else
  sendto(iface->fd, "", 0, 0, (struct sockaddr *) from, fromlen);
}
