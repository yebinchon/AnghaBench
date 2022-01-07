
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radius_msg_list {scalar_t__ msg_type; struct radius_msg_list* next; } ;
struct radius_client_data {int acct_serv_sock6; int acct_serv_sock; struct radius_msg_list* msgs; int ctx; struct hostapd_radius_servers* conf; } ;
struct hostapd_radius_servers {int num_acct_servers; struct hostapd_radius_server* acct_server; struct hostapd_radius_server* acct_servers; } ;
struct hostapd_radius_server {int timeouts; int port; int addr; } ;
typedef int abuf ;


 int HOSTAPD_LEVEL_NOTICE ;
 int HOSTAPD_MODULE_RADIUS ;
 scalar_t__ RADIUS_ACCT ;
 scalar_t__ RADIUS_ACCT_INTERIM ;
 int hostapd_ip_txt (int *,char*,int) ;
 int hostapd_logger (int ,int *,int ,int ,char*,int ,int ) ;
 int radius_change_server (struct radius_client_data*,struct hostapd_radius_server*,struct hostapd_radius_server*,int ,int ,int ) ;

__attribute__((used)) static void radius_client_acct_failover(struct radius_client_data *radius)
{
 struct hostapd_radius_servers *conf = radius->conf;
 struct hostapd_radius_server *next, *old;
 struct radius_msg_list *entry;
 char abuf[50];

 old = conf->acct_server;
 hostapd_logger(radius->ctx, ((void*)0), HOSTAPD_MODULE_RADIUS,
         HOSTAPD_LEVEL_NOTICE,
         "No response from Accounting server %s:%d - failover",
         hostapd_ip_txt(&old->addr, abuf, sizeof(abuf)),
         old->port);

 for (entry = radius->msgs; entry; entry = entry->next) {
  if (entry->msg_type == RADIUS_ACCT ||
      entry->msg_type == RADIUS_ACCT_INTERIM)
   old->timeouts++;
 }

 next = old + 1;
 if (next > &conf->acct_servers[conf->num_acct_servers - 1])
  next = conf->acct_servers;
 conf->acct_server = next;
 radius_change_server(radius, next, old,
        radius->acct_serv_sock,
        radius->acct_serv_sock6, 0);
}
