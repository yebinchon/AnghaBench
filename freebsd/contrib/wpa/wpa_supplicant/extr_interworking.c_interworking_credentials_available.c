
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dummy; } ;
struct wpa_cred {int dummy; } ;
struct wpa_bss {int dummy; } ;


 struct wpa_cred* interworking_credentials_available_helper (struct wpa_supplicant*,struct wpa_bss*,int,int*) ;

__attribute__((used)) static struct wpa_cred * interworking_credentials_available(
 struct wpa_supplicant *wpa_s, struct wpa_bss *bss, int *excluded)
{
 struct wpa_cred *cred;

 if (excluded)
  *excluded = 0;
 cred = interworking_credentials_available_helper(wpa_s, bss, 0,
        excluded);
 if (cred)
  return cred;
 return interworking_credentials_available_helper(wpa_s, bss, 1,
        excluded);
}
