
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct hostapd_data {int msg_ctx; TYPE_1__* conf; TYPE_2__* iface; int * drv_priv; } ;
struct TYPE_4__ {int driver_ap_teardown; } ;
struct TYPE_3__ {scalar_t__ broadcast_deauth; } ;


 int ETH_ALEN ;
 int MSG_DEBUG ;
 int MSG_WARNING ;
 scalar_t__ hostapd_drv_none (struct hostapd_data*) ;
 int hostapd_drv_sta_deauth (struct hostapd_data*,int *,int ) ;
 scalar_t__ hostapd_flush (struct hostapd_data*) ;
 int hostapd_free_stas (struct hostapd_data*) ;
 int os_memset (int *,int,int) ;
 int wpa_dbg (int ,int ,char*) ;
 int wpa_msg (int ,int ,char*) ;

__attribute__((used)) static int hostapd_flush_old_stations(struct hostapd_data *hapd, u16 reason)
{
 int ret = 0;
 u8 addr[ETH_ALEN];

 if (hostapd_drv_none(hapd) || hapd->drv_priv == ((void*)0))
  return 0;

 if (!hapd->iface->driver_ap_teardown) {
  wpa_dbg(hapd->msg_ctx, MSG_DEBUG,
   "Flushing old station entries");

  if (hostapd_flush(hapd)) {
   wpa_msg(hapd->msg_ctx, MSG_WARNING,
    "Could not connect to kernel driver");
   ret = -1;
  }
 }
 if (hapd->conf && hapd->conf->broadcast_deauth) {
  wpa_dbg(hapd->msg_ctx, MSG_DEBUG,
   "Deauthenticate all stations");
  os_memset(addr, 0xff, ETH_ALEN);
  hostapd_drv_sta_deauth(hapd, addr, reason);
 }
 hostapd_free_stas(hapd);

 return ret;
}
