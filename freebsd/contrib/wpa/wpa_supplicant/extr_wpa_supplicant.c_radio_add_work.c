
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int drv_flags; struct wpa_radio* radio; } ;
struct wpa_radio_work {unsigned int freq; char const* type; void (* cb ) (struct wpa_radio_work*,int) ;int list; void* bands; void* ctx; struct wpa_supplicant* wpa_s; int time; } ;
struct wpa_radio {int num_active_works; int work; } ;
struct wpa_driver_scan_params {int * freqs; } ;


 int MAX_ACTIVE_WORKS ;
 int MSG_DEBUG ;
 int WPA_DRIVER_FLAGS_OFFCHANNEL_SIMULTANEOUS ;
 int dl_list_add (int *,int *) ;
 int dl_list_add_tail (int *,int *) ;
 int dl_list_empty (int *) ;
 int os_get_reltime (int *) ;
 scalar_t__ os_strcmp (char const*,char*) ;
 struct wpa_radio_work* os_zalloc (int) ;
 int radio_work_check_next (struct wpa_supplicant*) ;
 int wpa_dbg (struct wpa_supplicant*,int ,char*,...) ;
 void* wpas_freq_to_band (unsigned int) ;
 void* wpas_get_bands (struct wpa_supplicant*,int *) ;

int radio_add_work(struct wpa_supplicant *wpa_s, unsigned int freq,
     const char *type, int next,
     void (*cb)(struct wpa_radio_work *work, int deinit),
     void *ctx)
{
 struct wpa_radio *radio = wpa_s->radio;
 struct wpa_radio_work *work;
 int was_empty;

 work = os_zalloc(sizeof(*work));
 if (work == ((void*)0))
  return -1;
 wpa_dbg(wpa_s, MSG_DEBUG, "Add radio work '%s'@%p", type, work);
 os_get_reltime(&work->time);
 work->freq = freq;
 work->type = type;
 work->wpa_s = wpa_s;
 work->cb = cb;
 work->ctx = ctx;

 if (freq)
  work->bands = wpas_freq_to_band(freq);
 else if (os_strcmp(type, "scan") == 0 ||
   os_strcmp(type, "p2p-scan") == 0)
  work->bands = wpas_get_bands(wpa_s,
          ((struct wpa_driver_scan_params *)
           ctx)->freqs);
 else
  work->bands = wpas_get_bands(wpa_s, ((void*)0));

 was_empty = dl_list_empty(&wpa_s->radio->work);
 if (next)
  dl_list_add(&wpa_s->radio->work, &work->list);
 else
  dl_list_add_tail(&wpa_s->radio->work, &work->list);
 if (was_empty) {
  wpa_dbg(wpa_s, MSG_DEBUG, "First radio work item in the queue - schedule start immediately");
  radio_work_check_next(wpa_s);
 } else if ((wpa_s->drv_flags & WPA_DRIVER_FLAGS_OFFCHANNEL_SIMULTANEOUS)
     && radio->num_active_works < MAX_ACTIVE_WORKS) {
  wpa_dbg(wpa_s, MSG_DEBUG,
   "Try to schedule a radio work (num_active_works=%u)",
   radio->num_active_works);
  radio_work_check_next(wpa_s);
 }

 return 0;
}
