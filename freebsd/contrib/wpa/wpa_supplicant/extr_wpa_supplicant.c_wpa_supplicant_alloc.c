
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int scan_interval; int new_connection; int fils_hlp_req; int bss_tmp_disallowed; scalar_t__ sched_scanning; struct wpa_supplicant* parent; struct wpa_supplicant* p2pdev; int scan_req; } ;


 int INITIAL_SCAN_REQ ;
 int dl_list_init (int *) ;
 struct wpa_supplicant* os_zalloc (int) ;

__attribute__((used)) static struct wpa_supplicant *
wpa_supplicant_alloc(struct wpa_supplicant *parent)
{
 struct wpa_supplicant *wpa_s;

 wpa_s = os_zalloc(sizeof(*wpa_s));
 if (wpa_s == ((void*)0))
  return ((void*)0);
 wpa_s->scan_req = INITIAL_SCAN_REQ;
 wpa_s->scan_interval = 5;
 wpa_s->new_connection = 1;
 wpa_s->parent = parent ? parent : wpa_s;
 wpa_s->p2pdev = wpa_s->parent;
 wpa_s->sched_scanning = 0;

 dl_list_init(&wpa_s->bss_tmp_disallowed);
 dl_list_init(&wpa_s->fils_hlp_req);

 return wpa_s;
}
