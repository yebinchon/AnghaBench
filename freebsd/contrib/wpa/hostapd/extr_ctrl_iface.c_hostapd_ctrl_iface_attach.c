
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct hostapd_data {int ctrl_dst; } ;
typedef int socklen_t ;


 int ctrl_iface_attach (int *,struct sockaddr_storage*,int ,char const*) ;

__attribute__((used)) static int hostapd_ctrl_iface_attach(struct hostapd_data *hapd,
         struct sockaddr_storage *from,
         socklen_t fromlen, const char *input)
{
 return ctrl_iface_attach(&hapd->ctrl_dst, from, fromlen, input);
}
