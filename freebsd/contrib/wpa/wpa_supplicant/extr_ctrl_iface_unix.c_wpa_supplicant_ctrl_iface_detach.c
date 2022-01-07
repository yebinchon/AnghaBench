
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct dl_list {int dummy; } ;
typedef int socklen_t ;


 int ctrl_iface_detach (struct dl_list*,struct sockaddr_storage*,int ) ;

__attribute__((used)) static int wpa_supplicant_ctrl_iface_detach(struct dl_list *ctrl_dst,
         struct sockaddr_storage *from,
         socklen_t fromlen)
{
 return ctrl_iface_detach(ctrl_dst, from, fromlen);
}
