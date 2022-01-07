
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {scalar_t__ dpp_gas_dialog_token; int gas; scalar_t__ dpp_gas_client; int * dpp_pkex; int * dpp_auth; } ;


 int dpp_auth_deinit (int *) ;
 int dpp_pkex_free (int *) ;
 int gas_query_stop (int ,scalar_t__) ;

void wpas_dpp_stop(struct wpa_supplicant *wpa_s)
{
 dpp_auth_deinit(wpa_s->dpp_auth);
 wpa_s->dpp_auth = ((void*)0);
 dpp_pkex_free(wpa_s->dpp_pkex);
 wpa_s->dpp_pkex = ((void*)0);
 if (wpa_s->dpp_gas_client && wpa_s->dpp_gas_dialog_token >= 0)
  gas_query_stop(wpa_s->gas, wpa_s->dpp_gas_dialog_token);
}
