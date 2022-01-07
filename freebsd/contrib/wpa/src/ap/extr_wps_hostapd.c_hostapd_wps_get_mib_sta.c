
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct hostapd_data {TYPE_1__* wps; } ;
struct TYPE_2__ {int registrar; } ;


 int wps_registrar_get_info (int ,int const*,char*,size_t) ;

int hostapd_wps_get_mib_sta(struct hostapd_data *hapd, const u8 *addr,
       char *buf, size_t buflen)
{
 if (hapd->wps == ((void*)0))
  return 0;
 return wps_registrar_get_info(hapd->wps->registrar, addr, buf, buflen);
}
