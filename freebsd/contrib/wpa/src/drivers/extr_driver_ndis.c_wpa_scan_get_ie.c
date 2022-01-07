
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_scan_res {int ie_len; } ;


 int const* get_ie (int const*,int ,int ) ;

__attribute__((used)) static const u8 * wpa_scan_get_ie(const struct wpa_scan_res *res, u8 ie)
{
 return get_ie((const u8 *) (res + 1), res->ie_len, ie);
}
