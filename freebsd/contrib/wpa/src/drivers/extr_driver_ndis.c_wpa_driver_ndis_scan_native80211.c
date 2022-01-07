
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct wpa_driver_scan_params {int dummy; } ;
struct wpa_driver_ndis_data {int ctx; } ;
typedef int req ;
struct TYPE_3__ {int dot11ScanType; struct TYPE_3__* dot11BSSID; int dot11BSSType; } ;
typedef TYPE_1__ DOT11_SCAN_REQUEST_V2 ;


 int ETH_ALEN ;
 int OID_DOT11_SCAN_REQUEST ;
 int dot11_BSS_type_any ;
 int dot11_scan_type_auto ;
 int eloop_cancel_timeout (int ,struct wpa_driver_ndis_data*,int ) ;
 int eloop_register_timeout (int,int ,int ,struct wpa_driver_ndis_data*,int ) ;
 int ndis_set_oid (struct wpa_driver_ndis_data*,int ,char*,int) ;
 int os_memset (TYPE_1__*,int,int) ;
 int wpa_driver_ndis_scan_timeout ;

__attribute__((used)) static int wpa_driver_ndis_scan_native80211(
 struct wpa_driver_ndis_data *drv,
 struct wpa_driver_scan_params *params)
{
 DOT11_SCAN_REQUEST_V2 req;
 int res;

 os_memset(&req, 0, sizeof(req));
 req.dot11BSSType = dot11_BSS_type_any;
 os_memset(req.dot11BSSID, 0xff, ETH_ALEN);
 req.dot11ScanType = dot11_scan_type_auto;
 res = ndis_set_oid(drv, OID_DOT11_SCAN_REQUEST, (char *) &req,
      sizeof(req));
 eloop_cancel_timeout(wpa_driver_ndis_scan_timeout, drv, drv->ctx);
 eloop_register_timeout(7, 0, wpa_driver_ndis_scan_timeout, drv,
          drv->ctx);
 return res;
}
