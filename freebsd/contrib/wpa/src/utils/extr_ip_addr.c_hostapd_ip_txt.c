
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int v6; int v4; } ;
struct hostapd_ip_addr {scalar_t__ af; TYPE_1__ u; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int inet_ntoa (int ) ;
 int * inet_ntop (scalar_t__,int *,char*,size_t) ;
 int os_strlcpy (char*,int ,size_t) ;

const char * hostapd_ip_txt(const struct hostapd_ip_addr *addr, char *buf,
       size_t buflen)
{
 if (buflen == 0 || addr == ((void*)0))
  return ((void*)0);

 if (addr->af == AF_INET) {
  os_strlcpy(buf, inet_ntoa(addr->u.v4), buflen);
 } else {
  buf[0] = '\0';
 }







 return buf;
}
