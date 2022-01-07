
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int conf; int * ext_pw; int * ctrl_iface; int scard; int * eapol; int * wpa; } ;
struct extra_radius_attr {struct extra_radius_attr* next; struct extra_radius_attr* auth_server; struct extra_radius_attr* shared_secret; } ;
struct eapol_test_data {struct extra_radius_attr* extra_attrs; struct extra_radius_attr* radius_conf; struct extra_radius_attr* eap_identity; int * last_recv_radius; int last_eap_radius; int radius; } ;


 int eapol_sm_deinit (int *) ;
 int ext_password_deinit (int *) ;
 int os_free (struct extra_radius_attr*) ;
 int radius_client_deinit (int ) ;
 int radius_msg_free (int *) ;
 int scard_deinit (int ) ;
 int wpa_config_free (int ) ;
 int wpa_sm_deinit (int *) ;
 int wpa_supplicant_ctrl_iface_deinit (int *) ;
 int wpabuf_free (int ) ;

__attribute__((used)) static void test_eapol_clean(struct eapol_test_data *e,
        struct wpa_supplicant *wpa_s)
{
 struct extra_radius_attr *p, *prev;

 wpa_sm_deinit(wpa_s->wpa);
 wpa_s->wpa = ((void*)0);
 radius_client_deinit(e->radius);
 wpabuf_free(e->last_eap_radius);
 radius_msg_free(e->last_recv_radius);
 e->last_recv_radius = ((void*)0);
 os_free(e->eap_identity);
 e->eap_identity = ((void*)0);
 eapol_sm_deinit(wpa_s->eapol);
 wpa_s->eapol = ((void*)0);
 if (e->radius_conf && e->radius_conf->auth_server) {
  os_free(e->radius_conf->auth_server->shared_secret);
  os_free(e->radius_conf->auth_server);
 }
 os_free(e->radius_conf);
 e->radius_conf = ((void*)0);
 scard_deinit(wpa_s->scard);
 if (wpa_s->ctrl_iface) {
  wpa_supplicant_ctrl_iface_deinit(wpa_s->ctrl_iface);
  wpa_s->ctrl_iface = ((void*)0);
 }

 ext_password_deinit(wpa_s->ext_pw);
 wpa_s->ext_pw = ((void*)0);

 wpa_config_free(wpa_s->conf);

 p = e->extra_attrs;
 while (p) {
  prev = p;
  p = p->next;
  os_free(prev);
 }
}
