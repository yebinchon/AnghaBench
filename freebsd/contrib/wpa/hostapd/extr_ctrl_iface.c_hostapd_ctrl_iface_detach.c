
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct hostapd_data {int ctrl_dst; } ;
typedef int socklen_t ;


 int ctrl_iface_detach (int *,struct sockaddr_storage*,int ) ;

__attribute__((used)) static int hostapd_ctrl_iface_detach(struct hostapd_data *hapd,
         struct sockaddr_storage *from,
         socklen_t fromlen)
{
 return ctrl_iface_detach(&hapd->ctrl_dst, from, fromlen);
}
