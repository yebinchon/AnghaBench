
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_data {int * eap_sim_db_priv; int * ssl_ctx; int * radius_srv; } ;


 int eap_sim_db_deinit (int *) ;
 int radius_server_deinit (int *) ;
 int tls_deinit (int *) ;

void authsrv_deinit(struct hostapd_data *hapd)
{
}
