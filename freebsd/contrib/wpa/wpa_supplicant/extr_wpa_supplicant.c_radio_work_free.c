
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wpa_radio_work {int list; TYPE_2__* wpa_s; int type; scalar_t__ started; } ;
struct TYPE_4__ {TYPE_1__* radio; struct wpa_radio_work* p2p_scan_work; struct wpa_radio_work* scan_work; } ;
struct TYPE_3__ {scalar_t__ num_active_works; } ;


 int MSG_DEBUG ;
 int MSG_INFO ;
 int dl_list_del (int *) ;
 int os_free (struct wpa_radio_work*) ;
 int wpa_dbg (TYPE_2__*,int ,char*,int ,struct wpa_radio_work*,scalar_t__) ;

__attribute__((used)) static void radio_work_free(struct wpa_radio_work *work)
{
 if (work->wpa_s->scan_work == work) {

  wpa_dbg(work->wpa_s, MSG_INFO, "Freeing radio work '%s'@%p (started=%d) that is marked as scan_work",
   work->type, work, work->started);
  work->wpa_s->scan_work = ((void*)0);
 }
 if (work->started) {
  work->wpa_s->radio->num_active_works--;
  wpa_dbg(work->wpa_s, MSG_DEBUG,
   "radio_work_free('%s'@%p): num_active_works --> %u",
   work->type, work,
   work->wpa_s->radio->num_active_works);
 }

 dl_list_del(&work->list);
 os_free(work);
}
