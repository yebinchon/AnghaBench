
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int conf; int * ctrl_iface; int scard; int wpa; } ;


 int pmksa_candidate_free (int ) ;
 int rsn_preauth_deinit (int ) ;
 int scard_deinit (int ) ;
 int wpa_config_free (int ) ;
 int wpa_sm_deinit (int ) ;
 int wpa_supplicant_ctrl_iface_deinit (int *) ;

__attribute__((used)) static void test_eapol_clean(struct wpa_supplicant *wpa_s)
{
 rsn_preauth_deinit(wpa_s->wpa);
 pmksa_candidate_free(wpa_s->wpa);
 wpa_sm_deinit(wpa_s->wpa);
 scard_deinit(wpa_s->scard);
 if (wpa_s->ctrl_iface) {
  wpa_supplicant_ctrl_iface_deinit(wpa_s->ctrl_iface);
  wpa_s->ctrl_iface = ((void*)0);
 }
 wpa_config_free(wpa_s->conf);
}
