
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wpabuf {int dummy; } ;
struct hostapd_data {int drv_priv; TYPE_1__* driver; } ;
struct TYPE_2__ {int (* vendor_cmd ) (int ,int,int,int const*,size_t,struct wpabuf*) ;} ;


 int stub1 (int ,int,int,int const*,size_t,struct wpabuf*) ;

__attribute__((used)) static inline int hostapd_drv_vendor_cmd(struct hostapd_data *hapd,
      int vendor_id, int subcmd,
      const u8 *data, size_t data_len,
      struct wpabuf *buf)
{
 if (hapd->driver == ((void*)0) || hapd->driver->vendor_cmd == ((void*)0))
  return -1;
 return hapd->driver->vendor_cmd(hapd->drv_priv, vendor_id, subcmd, data,
     data_len, buf);
}
