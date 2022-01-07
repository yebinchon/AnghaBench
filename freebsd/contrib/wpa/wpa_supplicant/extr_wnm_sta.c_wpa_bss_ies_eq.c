
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct wpa_bss {int dummy; } ;


 scalar_t__ os_memcmp (scalar_t__ const*,scalar_t__ const*,scalar_t__ const) ;
 scalar_t__* wpa_bss_get_ie (struct wpa_bss*,scalar_t__) ;

__attribute__((used)) static int wpa_bss_ies_eq(struct wpa_bss *a, struct wpa_bss *b, u8 eid)
{
 const u8 *ie_a, *ie_b;

 if (!a || !b)
  return 0;

 ie_a = wpa_bss_get_ie(a, eid);
 ie_b = wpa_bss_get_ie(b, eid);

 if (!ie_a || !ie_b || ie_a[1] != ie_b[1])
  return 0;

 return os_memcmp(ie_a, ie_b, ie_a[1]) == 0;
}
