
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_bss {int freq; } ;



__attribute__((used)) static inline int bss_is_dmg(const struct wpa_bss *bss)
{
 return bss->freq > 45000;
}
