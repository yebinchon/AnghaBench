
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 scalar_t__ RSN_SELECTOR_LEN ;
 int RSN_SELECTOR_PUT (int *,int ) ;
 int WLAN_EID_VENDOR_SPECIFIC ;
 int os_memcpy (int *,int const*,size_t) ;

u8 * wpa_add_kde(u8 *pos, u32 kde, const u8 *data, size_t data_len,
   const u8 *data2, size_t data2_len)
{
 *pos++ = WLAN_EID_VENDOR_SPECIFIC;
 *pos++ = RSN_SELECTOR_LEN + data_len + data2_len;
 RSN_SELECTOR_PUT(pos, kde);
 pos += RSN_SELECTOR_LEN;
 os_memcpy(pos, data, data_len);
 pos += data_len;
 if (data2) {
  os_memcpy(pos, data2, data2_len);
  pos += data2_len;
 }
 return pos;
}
