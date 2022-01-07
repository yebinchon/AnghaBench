
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct hostapd_data {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* send_mlme ) (int ,void const*,size_t,int,int ,int const*,size_t) ;} ;


 int stub1 (int ,void const*,size_t,int,int ,int const*,size_t) ;

int hostapd_drv_send_mlme_csa(struct hostapd_data *hapd,
         const void *msg, size_t len, int noack,
         const u16 *csa_offs, size_t csa_offs_len)
{
 if (hapd->driver == ((void*)0) || hapd->driver->send_mlme == ((void*)0))
  return 0;
 return hapd->driver->send_mlme(hapd->drv_priv, msg, len, noack, 0,
           csa_offs, csa_offs_len);
}
