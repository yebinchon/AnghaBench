
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_bss {int dummy; } ;
typedef enum mbo_attr_id { ____Placeholder_mbo_attr_id } mbo_attr_id ;


 int MBO_IE_HEADER ;
 int MBO_IE_VENDOR_TYPE ;
 int const* get_ie (int const*,int,int) ;
 int* wpa_bss_get_vendor_ie (struct wpa_bss*,int ) ;

const u8 * wpas_mbo_get_bss_attr(struct wpa_bss *bss, enum mbo_attr_id attr)
{
 const u8 *mbo, *end;

 if (!bss)
  return ((void*)0);

 mbo = wpa_bss_get_vendor_ie(bss, MBO_IE_VENDOR_TYPE);
 if (!mbo)
  return ((void*)0);

 end = mbo + 2 + mbo[1];
 mbo += MBO_IE_HEADER;

 return get_ie(mbo, end - mbo, attr);
}
