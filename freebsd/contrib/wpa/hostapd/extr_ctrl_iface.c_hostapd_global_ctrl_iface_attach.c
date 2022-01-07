
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct hapd_interfaces {int global_ctrl_dst; } ;
typedef int socklen_t ;


 int ctrl_iface_attach (int *,struct sockaddr_storage*,int ,char*) ;

__attribute__((used)) static int hostapd_global_ctrl_iface_attach(struct hapd_interfaces *interfaces,
         struct sockaddr_storage *from,
         socklen_t fromlen, char *input)
{
 return ctrl_iface_attach(&interfaces->global_ctrl_dst, from, fromlen,
     input);
}
