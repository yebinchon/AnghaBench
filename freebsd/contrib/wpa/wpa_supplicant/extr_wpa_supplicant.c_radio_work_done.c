
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dummy; } ;
struct wpa_radio_work {unsigned int started; int type; int time; struct wpa_supplicant* wpa_s; } ;
struct os_reltime {int usec; int sec; } ;


 int MSG_DEBUG ;
 int os_get_reltime (struct os_reltime*) ;
 int os_reltime_sub (struct os_reltime*,int *,struct os_reltime*) ;
 int radio_work_check_next (struct wpa_supplicant*) ;
 int radio_work_free (struct wpa_radio_work*) ;
 int wpa_dbg (struct wpa_supplicant*,int ,char*,int ,struct wpa_radio_work*,char*,int ,int ) ;

void radio_work_done(struct wpa_radio_work *work)
{
 struct wpa_supplicant *wpa_s = work->wpa_s;
 struct os_reltime now, diff;
 unsigned int started = work->started;

 os_get_reltime(&now);
 os_reltime_sub(&now, &work->time, &diff);
 wpa_dbg(wpa_s, MSG_DEBUG, "Radio work '%s'@%p %s in %ld.%06ld seconds",
  work->type, work, started ? "done" : "canceled",
  diff.sec, diff.usec);
 radio_work_free(work);
 if (started)
  radio_work_check_next(wpa_s);
}
