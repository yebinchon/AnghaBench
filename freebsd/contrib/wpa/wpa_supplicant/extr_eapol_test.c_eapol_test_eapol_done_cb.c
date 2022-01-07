
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eapol_test_data {int wpa_s; } ;


 int WPA_COMPLETED ;
 int printf (char*) ;
 int wpa_supplicant_cancel_auth_timeout (int ) ;
 int wpa_supplicant_set_state (int ,int ) ;

__attribute__((used)) static void eapol_test_eapol_done_cb(void *ctx)
{
 struct eapol_test_data *e = ctx;

 printf("WPA: EAPOL processing complete\n");
 wpa_supplicant_cancel_auth_timeout(e->wpa_s);
 wpa_supplicant_set_state(e->wpa_s, WPA_COMPLETED);
}
