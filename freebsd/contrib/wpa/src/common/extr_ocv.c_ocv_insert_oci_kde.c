
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_channel_info {int dummy; } ;


 int RSN_KEY_DATA_OCI ;
 scalar_t__ RSN_SELECTOR_LEN ;
 int RSN_SELECTOR_PUT (int *,int ) ;
 int WLAN_EID_VENDOR_SPECIFIC ;
 int ocv_insert_oci (struct wpa_channel_info*,int **) ;

int ocv_insert_oci_kde(struct wpa_channel_info *ci, u8 **argpos)
{
 u8 *pos = *argpos;

 *pos++ = WLAN_EID_VENDOR_SPECIFIC;
 *pos++ = RSN_SELECTOR_LEN + 3;
 RSN_SELECTOR_PUT(pos, RSN_KEY_DATA_OCI);
 pos += RSN_SELECTOR_LEN;

 *argpos = pos;
 return ocv_insert_oci(ci, argpos);
}
