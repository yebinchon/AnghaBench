
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radius_client_data {int auth_serv_sock; int acct_serv_sock; int auth_serv_sock6; int acct_serv_sock6; int auth_sock; int acct_sock; struct hostapd_radius_servers* conf; void* ctx; } ;
struct hostapd_radius_servers {scalar_t__ retry_primary_interval; scalar_t__ acct_server; scalar_t__ auth_server; } ;


 int eloop_register_timeout (scalar_t__,int ,int ,struct radius_client_data*,int *) ;
 struct radius_client_data* os_zalloc (int) ;
 int radius_client_deinit (struct radius_client_data*) ;
 scalar_t__ radius_client_init_acct (struct radius_client_data*) ;
 scalar_t__ radius_client_init_auth (struct radius_client_data*) ;
 int radius_retry_primary_timer ;

struct radius_client_data *
radius_client_init(void *ctx, struct hostapd_radius_servers *conf)
{
 struct radius_client_data *radius;

 radius = os_zalloc(sizeof(struct radius_client_data));
 if (radius == ((void*)0))
  return ((void*)0);

 radius->ctx = ctx;
 radius->conf = conf;
 radius->auth_serv_sock = radius->acct_serv_sock =
  radius->auth_serv_sock6 = radius->acct_serv_sock6 =
  radius->auth_sock = radius->acct_sock = -1;

 if (conf->auth_server && radius_client_init_auth(radius)) {
  radius_client_deinit(radius);
  return ((void*)0);
 }

 if (conf->acct_server && radius_client_init_acct(radius)) {
  radius_client_deinit(radius);
  return ((void*)0);
 }

 if (conf->retry_primary_interval)
  eloop_register_timeout(conf->retry_primary_interval, 0,
           radius_retry_primary_timer, radius,
           ((void*)0));

 return radius;
}
