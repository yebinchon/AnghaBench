
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_bss {int ie_len; } ;


 int const* get_ie (int const*,int ,int ) ;

const u8 * wpa_bss_get_ie(const struct wpa_bss *bss, u8 ie)
{
 return get_ie((const u8 *) (bss + 1), bss->ie_len, ie);
}
