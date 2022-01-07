
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta_info {int dummy; } ;
struct hostapd_data {int dummy; } ;



__attribute__((used)) static inline int ieee802_11_get_mib_sta(struct hostapd_data *hapd,
      struct sta_info *sta,
      char *buf, size_t buflen)
{
 return 0;
}
