
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_bss {int level; } ;



__attribute__((used)) static inline void wpa_bss_update_level(struct wpa_bss *bss, int new_level)
{
 if (bss != ((void*)0) && new_level < 0)
  bss->level = new_level;
}
