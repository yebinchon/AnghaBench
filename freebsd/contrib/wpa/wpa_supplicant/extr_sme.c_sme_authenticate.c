
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ send_confirm; int state; } ;
struct TYPE_4__ {scalar_t__ sae_group_index; TYPE_1__ sae; } ;
struct wpa_supplicant {TYPE_2__ sme; scalar_t__ connect_work; } ;
struct wpa_ssid {int dummy; } ;
struct wpa_connect_work {int sme; struct wpa_ssid* ssid; struct wpa_bss* bss; } ;
struct wpa_bss {int freq; } ;


 int MSG_DEBUG ;
 int SAE_NOTHING ;
 struct wpa_connect_work* os_zalloc (int) ;
 scalar_t__ radio_add_work (struct wpa_supplicant*,int ,char*,int,int ,struct wpa_connect_work*) ;
 int radio_remove_works (struct wpa_supplicant*,char*,int ) ;
 scalar_t__ radio_work_pending (struct wpa_supplicant*,char*) ;
 int sme_auth_start_cb ;
 int wpa_dbg (struct wpa_supplicant*,int ,char*) ;
 int wpas_abort_ongoing_scan (struct wpa_supplicant*) ;
 int wpas_connect_work_free (struct wpa_connect_work*) ;

void sme_authenticate(struct wpa_supplicant *wpa_s,
        struct wpa_bss *bss, struct wpa_ssid *ssid)
{
 struct wpa_connect_work *cwork;

 if (bss == ((void*)0) || ssid == ((void*)0))
  return;
 if (wpa_s->connect_work) {
  wpa_dbg(wpa_s, MSG_DEBUG, "SME: Reject sme_authenticate() call since connect_work exist");
  return;
 }

 if (radio_work_pending(wpa_s, "sme-connect")) {





  wpa_dbg(wpa_s, MSG_DEBUG,
   "SME: Remove previous pending sme-connect");
  radio_remove_works(wpa_s, "sme-connect", 0);
 }

 wpas_abort_ongoing_scan(wpa_s);

 cwork = os_zalloc(sizeof(*cwork));
 if (cwork == ((void*)0))
  return;
 cwork->bss = bss;
 cwork->ssid = ssid;
 cwork->sme = 1;







 if (radio_add_work(wpa_s, bss->freq, "sme-connect", 1,
      sme_auth_start_cb, cwork) < 0)
  wpas_connect_work_free(cwork);
}
