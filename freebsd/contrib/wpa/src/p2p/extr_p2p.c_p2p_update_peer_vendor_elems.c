
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct TYPE_2__ {int * vendor_elems; } ;
struct p2p_device {TYPE_1__ info; } ;


 scalar_t__ P2P_IE_VENDOR_TYPE ;
 scalar_t__ WFD_IE_VENDOR_TYPE ;
 int WLAN_EID_VENDOR_SPECIFIC ;
 scalar_t__ WMM_IE_VENDOR_TYPE ;
 scalar_t__ WPA_GET_BE32 (int const*) ;
 scalar_t__ WPA_IE_VENDOR_TYPE ;
 scalar_t__ WPS_IE_VENDOR_TYPE ;
 int wpabuf_free (int *) ;
 int wpabuf_put_data (int *,int const*,int) ;
 scalar_t__ wpabuf_resize (int **,int) ;

__attribute__((used)) static void p2p_update_peer_vendor_elems(struct p2p_device *dev, const u8 *ies,
      size_t ies_len)
{
 const u8 *pos, *end;
 u8 id, len;

 wpabuf_free(dev->info.vendor_elems);
 dev->info.vendor_elems = ((void*)0);

 end = ies + ies_len;

 for (pos = ies; end - pos > 1; pos += len) {
  id = *pos++;
  len = *pos++;

  if (len > end - pos)
   break;

  if (id != WLAN_EID_VENDOR_SPECIFIC || len < 3)
   continue;

  if (len >= 4) {
   u32 type = WPA_GET_BE32(pos);

   if (type == WPA_IE_VENDOR_TYPE ||
       type == WMM_IE_VENDOR_TYPE ||
       type == WPS_IE_VENDOR_TYPE ||
       type == P2P_IE_VENDOR_TYPE ||
       type == WFD_IE_VENDOR_TYPE)
    continue;
  }


  if (wpabuf_resize(&dev->info.vendor_elems, 2 + len) < 0)
   break;
  wpabuf_put_data(dev->info.vendor_elems, pos - 2, 2 + len);
 }
}
