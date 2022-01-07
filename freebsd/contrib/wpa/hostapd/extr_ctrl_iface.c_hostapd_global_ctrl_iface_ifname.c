
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct hostapd_data {int dummy; } ;
struct hapd_interfaces {int dummy; } ;
typedef int socklen_t ;


 int hostapd_ctrl_iface_receive_process (struct hostapd_data*,char*,char*,int,struct sockaddr_storage*,int ) ;
 struct hostapd_data* hostapd_interfaces_get_hapd (struct hapd_interfaces*,char const*) ;
 int os_snprintf (char*,int,char*) ;
 scalar_t__ os_snprintf_error (int,int) ;

__attribute__((used)) static int hostapd_global_ctrl_iface_ifname(struct hapd_interfaces *interfaces,
         const char *ifname,
         char *buf, char *reply,
         int reply_size,
         struct sockaddr_storage *from,
         socklen_t fromlen)
{
 struct hostapd_data *hapd;

 hapd = hostapd_interfaces_get_hapd(interfaces, ifname);
 if (hapd == ((void*)0)) {
  int res;

  res = os_snprintf(reply, reply_size, "FAIL-NO-IFNAME-MATCH\n");
  if (os_snprintf_error(reply_size, res))
   return -1;
  return res;
 }

 return hostapd_ctrl_iface_receive_process(hapd, buf, reply,reply_size,
        from, fromlen);
}
