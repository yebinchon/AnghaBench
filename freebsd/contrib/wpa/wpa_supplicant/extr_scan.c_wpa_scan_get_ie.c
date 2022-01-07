
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_scan_res {size_t ie_len; size_t beacon_ie_len; } ;


 int const* get_ie (int const*,size_t,int ) ;

const u8 * wpa_scan_get_ie(const struct wpa_scan_res *res, u8 ie)
{
 size_t ie_len = res->ie_len;


 if (!ie_len)
  ie_len = res->beacon_ie_len;

 return get_ie((const u8 *) (res + 1), ie_len, ie);
}
