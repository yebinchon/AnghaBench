
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct wpa_supplicant {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* vendor_cmd ) (int ,int,int,int const*,size_t,struct wpabuf*) ;} ;


 int stub1 (int ,int,int,int const*,size_t,struct wpabuf*) ;

__attribute__((used)) static inline int wpa_drv_vendor_cmd(struct wpa_supplicant *wpa_s,
         int vendor_id, int subcmd, const u8 *data,
         size_t data_len, struct wpabuf *buf)
{
 if (!wpa_s->driver->vendor_cmd)
  return -1;
 return wpa_s->driver->vendor_cmd(wpa_s->drv_priv, vendor_id, subcmd,
      data, data_len, buf);
}
