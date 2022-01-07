
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpabuf {int dummy; } ;
struct wpa_supplicant {int coloc_intf_auto_report; struct wpabuf* coloc_intf_elems; scalar_t__ coloc_intf_dialog_token; TYPE_1__* conf; } ;
struct TYPE_2__ {scalar_t__ coloc_intf_reporting; } ;


 int wnm_send_coloc_intf_report (struct wpa_supplicant*,scalar_t__,struct wpabuf*) ;
 int wpabuf_free (struct wpabuf*) ;
 scalar_t__ wpabuf_len (struct wpabuf*) ;

void wnm_set_coloc_intf_elems(struct wpa_supplicant *wpa_s,
         struct wpabuf *elems)
{
 wpabuf_free(wpa_s->coloc_intf_elems);
 if (elems && wpabuf_len(elems) == 0) {
  wpabuf_free(elems);
  elems = ((void*)0);
 }
 wpa_s->coloc_intf_elems = elems;

 if (wpa_s->conf->coloc_intf_reporting && wpa_s->coloc_intf_elems &&
     wpa_s->coloc_intf_dialog_token &&
     (wpa_s->coloc_intf_auto_report == 1 ||
      wpa_s->coloc_intf_auto_report == 3)) {



  wnm_send_coloc_intf_report(wpa_s,
        wpa_s->coloc_intf_dialog_token,
        wpa_s->coloc_intf_elems);
 }
}
