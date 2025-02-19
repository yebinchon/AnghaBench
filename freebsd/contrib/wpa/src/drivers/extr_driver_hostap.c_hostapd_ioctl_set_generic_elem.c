
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t len; int * data; } ;
struct TYPE_4__ {TYPE_1__ generic_elem; } ;
struct prism2_hostapd_param {TYPE_2__ u; int cmd; } ;
struct hostap_driver_data {size_t generic_ie_len; size_t wps_ie_len; int wps_ie; int generic_ie; } ;


 int MSG_DEBUG ;
 size_t PRISM2_HOSTAPD_GENERIC_ELEMENT_HDR_LEN ;
 int PRISM2_HOSTAPD_SET_GENERIC_ELEMENT ;
 int hostapd_ioctl (struct hostap_driver_data*,struct prism2_hostapd_param*,size_t) ;
 int os_free (struct prism2_hostapd_param*) ;
 int os_memcpy (int *,int ,size_t) ;
 struct prism2_hostapd_param* os_zalloc (size_t) ;
 int wpa_hexdump (int ,char*,int *,size_t) ;

__attribute__((used)) static int hostapd_ioctl_set_generic_elem(struct hostap_driver_data *drv)
{
 struct prism2_hostapd_param *param;
 int res;
 size_t blen, elem_len;

 elem_len = drv->generic_ie_len + drv->wps_ie_len;
 blen = PRISM2_HOSTAPD_GENERIC_ELEMENT_HDR_LEN + elem_len;
 if (blen < sizeof(*param))
  blen = sizeof(*param);

 param = os_zalloc(blen);
 if (param == ((void*)0))
  return -1;

 param->cmd = PRISM2_HOSTAPD_SET_GENERIC_ELEMENT;
 param->u.generic_elem.len = elem_len;
 if (drv->generic_ie) {
  os_memcpy(param->u.generic_elem.data, drv->generic_ie,
     drv->generic_ie_len);
 }
 if (drv->wps_ie) {
  os_memcpy(&param->u.generic_elem.data[drv->generic_ie_len],
     drv->wps_ie, drv->wps_ie_len);
 }
 wpa_hexdump(MSG_DEBUG, "hostap: Set generic IE",
      param->u.generic_elem.data, elem_len);
 res = hostapd_ioctl(drv, param, blen);

 os_free(param);

 return res;
}
