
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ft_used; scalar_t__ ft_ies; int sae; int * sae_token; scalar_t__ prev_bssid_set; } ;
struct wpa_supplicant {TYPE_1__ sme; } ;


 int sae_clear_data (int *) ;
 int sme_stop_sa_query (struct wpa_supplicant*) ;
 int sme_update_ft_ies (struct wpa_supplicant*,int *,int *,int ) ;
 int wpabuf_free (int *) ;

void sme_clear_on_disassoc(struct wpa_supplicant *wpa_s)
{
 wpa_s->sme.prev_bssid_set = 0;
}
