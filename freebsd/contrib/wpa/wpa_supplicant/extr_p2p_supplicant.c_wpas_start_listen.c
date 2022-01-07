
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpas_p2p_listen_work {unsigned int freq; unsigned int duration; int * probe_resp_ie; } ;
struct wpabuf {int dummy; } ;
struct wpa_supplicant {scalar_t__ p2p_listen_work; } ;


 int MSG_DEBUG ;
 struct wpas_p2p_listen_work* os_zalloc (int) ;
 scalar_t__ radio_add_work (struct wpa_supplicant*,unsigned int,char*,int ,int ,struct wpas_p2p_listen_work*) ;
 int wpa_printf (int ,char*) ;
 int * wpabuf_dup (struct wpabuf const*) ;
 int wpas_p2p_listen_work_free (struct wpas_p2p_listen_work*) ;
 int wpas_start_listen_cb ;

__attribute__((used)) static int wpas_start_listen(void *ctx, unsigned int freq,
        unsigned int duration,
        const struct wpabuf *probe_resp_ie)
{
 struct wpa_supplicant *wpa_s = ctx;
 struct wpas_p2p_listen_work *lwork;

 if (wpa_s->p2p_listen_work) {
  wpa_printf(MSG_DEBUG, "P2P: Reject start_listen since p2p_listen_work already exists");
  return -1;
 }

 lwork = os_zalloc(sizeof(*lwork));
 if (lwork == ((void*)0))
  return -1;
 lwork->freq = freq;
 lwork->duration = duration;
 if (probe_resp_ie) {
  lwork->probe_resp_ie = wpabuf_dup(probe_resp_ie);
  if (lwork->probe_resp_ie == ((void*)0)) {
   wpas_p2p_listen_work_free(lwork);
   return -1;
  }
 }

 if (radio_add_work(wpa_s, freq, "p2p-listen", 0, wpas_start_listen_cb,
      lwork) < 0) {
  wpas_p2p_listen_work_free(lwork);
  return -1;
 }

 return 0;
}
