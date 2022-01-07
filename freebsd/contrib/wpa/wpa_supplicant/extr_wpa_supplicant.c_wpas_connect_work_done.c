
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {struct wpa_radio_work* connect_work; } ;
struct wpa_radio_work {struct wpa_connect_work* ctx; } ;
struct wpa_connect_work {int dummy; } ;


 int radio_work_done (struct wpa_radio_work*) ;
 int wpas_connect_work_free (struct wpa_connect_work*) ;

void wpas_connect_work_done(struct wpa_supplicant *wpa_s)
{
 struct wpa_connect_work *cwork;
 struct wpa_radio_work *work = wpa_s->connect_work;

 if (!work)
  return;

 wpa_s->connect_work = ((void*)0);
 cwork = work->ctx;
 work->ctx = ((void*)0);
 wpas_connect_work_free(cwork);
 radio_work_done(work);
}
