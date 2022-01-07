
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_channel_info {int dummy; } ;


 scalar_t__ OCV_OCI_LEN ;
 int WLAN_EID_EXTENSION ;
 scalar_t__ WLAN_EID_EXT_OCV_OCI ;
 int ocv_insert_oci (struct wpa_channel_info*,int **) ;

int ocv_insert_extended_oci(struct wpa_channel_info *ci, u8 *pos)
{
 *pos++ = WLAN_EID_EXTENSION;
 *pos++ = 1 + OCV_OCI_LEN;
 *pos++ = WLAN_EID_EXT_OCV_OCI;
 return ocv_insert_oci(ci, &pos);
}
