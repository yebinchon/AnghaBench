
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_data {int * dpp_pkex; int * dpp_auth; } ;


 int dpp_auth_deinit (int *) ;
 int dpp_pkex_free (int *) ;

void hostapd_dpp_stop(struct hostapd_data *hapd)
{
 dpp_auth_deinit(hapd->dpp_auth);
 hapd->dpp_auth = ((void*)0);
 dpp_pkex_free(hapd->dpp_pkex);
 hapd->dpp_pkex = ((void*)0);
}
