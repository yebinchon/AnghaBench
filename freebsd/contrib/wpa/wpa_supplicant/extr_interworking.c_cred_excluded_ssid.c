
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_cred {size_t num_excluded_ssid; struct excluded_ssid* excluded_ssid; } ;
struct wpa_bss {scalar_t__ ssid_len; int ssid; } ;
struct excluded_ssid {scalar_t__ ssid_len; int ssid; } ;


 scalar_t__ os_memcmp (int ,int ,scalar_t__) ;

__attribute__((used)) static int cred_excluded_ssid(struct wpa_cred *cred, struct wpa_bss *bss)
{
 size_t i;

 if (!cred->excluded_ssid)
  return 0;

 for (i = 0; i < cred->num_excluded_ssid; i++) {
  struct excluded_ssid *e = &cred->excluded_ssid[i];
  if (bss->ssid_len == e->ssid_len &&
      os_memcmp(bss->ssid, e->ssid, e->ssid_len) == 0)
   return 1;
 }

 return 0;
}
