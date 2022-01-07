
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radius_client_data {scalar_t__ auth_sock; scalar_t__ acct_sock; int acct_serv_sock6; int acct_serv_sock; int auth_serv_sock6; int auth_serv_sock; struct hostapd_radius_servers* conf; } ;
struct hostapd_radius_servers {scalar_t__ retry_primary_interval; struct hostapd_radius_server* acct_server; struct hostapd_radius_server* acct_servers; struct hostapd_radius_server* auth_server; struct hostapd_radius_server* auth_servers; } ;
struct hostapd_radius_server {int dummy; } ;


 int eloop_register_timeout (scalar_t__,int ,void (*) (void*,void*),struct radius_client_data*,int *) ;
 scalar_t__ radius_change_server (struct radius_client_data*,struct hostapd_radius_server*,struct hostapd_radius_server*,int ,int ,int) ;

__attribute__((used)) static void radius_retry_primary_timer(void *eloop_ctx, void *timeout_ctx)
{
 struct radius_client_data *radius = eloop_ctx;
 struct hostapd_radius_servers *conf = radius->conf;
 struct hostapd_radius_server *oserv;

 if (radius->auth_sock >= 0 && conf->auth_servers &&
     conf->auth_server != conf->auth_servers) {
  oserv = conf->auth_server;
  conf->auth_server = conf->auth_servers;
  if (radius_change_server(radius, conf->auth_server, oserv,
      radius->auth_serv_sock,
      radius->auth_serv_sock6, 1) < 0) {
   conf->auth_server = oserv;
   radius_change_server(radius, oserv, conf->auth_server,
          radius->auth_serv_sock,
          radius->auth_serv_sock6, 1);
  }
 }

 if (radius->acct_sock >= 0 && conf->acct_servers &&
     conf->acct_server != conf->acct_servers) {
  oserv = conf->acct_server;
  conf->acct_server = conf->acct_servers;
  if (radius_change_server(radius, conf->acct_server, oserv,
      radius->acct_serv_sock,
      radius->acct_serv_sock6, 0) < 0) {
   conf->acct_server = oserv;
   radius_change_server(radius, oserv, conf->acct_server,
          radius->acct_serv_sock,
          radius->acct_serv_sock6, 0);
  }
 }

 if (conf->retry_primary_interval)
  eloop_register_timeout(conf->retry_primary_interval, 0,
           radius_retry_primary_timer, radius,
           ((void*)0));
}
