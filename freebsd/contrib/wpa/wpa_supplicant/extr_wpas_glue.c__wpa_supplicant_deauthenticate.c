
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int wpa_supplicant_deauthenticate (void*,int ) ;
 int wpa_supplicant_req_scan (void*,int,int ) ;

__attribute__((used)) static void _wpa_supplicant_deauthenticate(void *wpa_s, u16 reason_code)
{
 wpa_supplicant_deauthenticate(wpa_s, reason_code);

 wpa_supplicant_req_scan(wpa_s, 5, 0);
}
