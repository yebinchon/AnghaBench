
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_13__ {int s_addr; } ;
struct sockaddr_in6 {int sin_family; int sin6_family; void* sin6_port; int sin6_addr; void* sin_port; TYPE_6__ sin_addr; } ;
struct sockaddr_in {int sin_family; int sin6_family; void* sin6_port; int sin6_addr; void* sin_port; TYPE_6__ sin_addr; } ;
struct sockaddr {int dummy; } ;
struct radius_msg_list {scalar_t__ msg_type; int attempts; int next_wait; scalar_t__ first_try; scalar_t__ next_try; struct radius_msg_list* next; } ;
struct radius_client_data {int auth_sock; int acct_sock; struct radius_msg_list* msgs; int ctx; struct hostapd_radius_servers* conf; } ;
struct in6_addr {int dummy; } ;
struct TYPE_10__ {int s_addr; } ;
struct TYPE_11__ {int v6; TYPE_3__ v4; } ;
struct TYPE_12__ {int af; TYPE_4__ u; } ;
struct hostapd_radius_servers {TYPE_5__ client_addr; scalar_t__ force_client_addr; } ;
struct TYPE_8__ {int s_addr; } ;
struct TYPE_9__ {int v6; TYPE_1__ v4; } ;
struct TYPE_14__ {int af; TYPE_2__ u; } ;
struct hostapd_radius_server {scalar_t__ shared_secret_len; TYPE_7__ addr; int port; int shared_secret; } ;
typedef int socklen_t ;
typedef int serv6 ;
typedef int serv ;
typedef int disconnect_addr ;
typedef int claddr6 ;
typedef int claddr ;
typedef int abuf ;




 int AF_UNSPEC ;
 int HOSTAPD_LEVEL_INFO ;
 int HOSTAPD_MODULE_RADIUS ;
 int MSG_DEBUG ;
 int MSG_INFO ;
 scalar_t__ RADIUS_ACCT ;
 scalar_t__ RADIUS_AUTH ;
 int RADIUS_CLIENT_FIRST_WAIT ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 scalar_t__ connect (int,struct sockaddr*,int) ;
 int eloop_cancel_timeout (int ,struct radius_client_data*,int *) ;
 int eloop_register_timeout (int,int ,int ,struct radius_client_data*,int *) ;
 int errno ;
 int getsockname (int,struct sockaddr*,int*) ;
 int hostapd_ip_txt (TYPE_7__*,char*,int) ;
 int hostapd_logger (int ,int *,int ,int ,char*,char*,int ,int ) ;
 void* htons (int ) ;
 int inet_ntoa (TYPE_6__) ;
 int inet_ntop (int const,int *,char*,int) ;
 int ntohs (void*) ;
 scalar_t__ os_memcmp (int ,int ,scalar_t__) ;
 int os_memcpy (int *,int *,int) ;
 int os_memset (struct sockaddr_in6*,int ,int) ;
 int radius_client_flush (struct radius_client_data*,int) ;
 int radius_client_timer ;
 int radius_client_update_acct_msgs (struct radius_client_data*,int ,scalar_t__) ;
 int strerror (int ) ;
 int wpa_printf (int ,char*,int,...) ;

__attribute__((used)) static int
radius_change_server(struct radius_client_data *radius,
       struct hostapd_radius_server *nserv,
       struct hostapd_radius_server *oserv,
       int sock, int sock6, int auth)
{
 struct sockaddr_in serv, claddr;



 struct sockaddr *addr, *cl_addr;
 socklen_t addrlen, claddrlen;
 char abuf[50];
 int sel_sock;
 struct radius_msg_list *entry;
 struct hostapd_radius_servers *conf = radius->conf;
 struct sockaddr_in disconnect_addr = {
  .sin_family = AF_UNSPEC,
 };

 hostapd_logger(radius->ctx, ((void*)0), HOSTAPD_MODULE_RADIUS,
         HOSTAPD_LEVEL_INFO,
         "%s server %s:%d",
         auth ? "Authentication" : "Accounting",
         hostapd_ip_txt(&nserv->addr, abuf, sizeof(abuf)),
         nserv->port);

 if (oserv && oserv == nserv) {

  if (auth)
   radius_client_flush(radius, 1);
 }

 if (oserv && oserv != nserv &&
     (nserv->shared_secret_len != oserv->shared_secret_len ||
      os_memcmp(nserv->shared_secret, oserv->shared_secret,
         nserv->shared_secret_len) != 0)) {







  if (auth)
   radius_client_flush(radius, 1);
  else {
   radius_client_update_acct_msgs(
    radius, nserv->shared_secret,
    nserv->shared_secret_len);
  }
 }


 for (entry = radius->msgs; oserv && entry; entry = entry->next) {
  if ((auth && entry->msg_type != RADIUS_AUTH) ||
      (!auth && entry->msg_type != RADIUS_ACCT))
   continue;
  entry->next_try = entry->first_try + RADIUS_CLIENT_FIRST_WAIT;
  entry->attempts = 1;
  entry->next_wait = RADIUS_CLIENT_FIRST_WAIT * 2;
 }

 if (radius->msgs) {
  eloop_cancel_timeout(radius_client_timer, radius, ((void*)0));
  eloop_register_timeout(RADIUS_CLIENT_FIRST_WAIT, 0,
           radius_client_timer, radius, ((void*)0));
 }

 switch (nserv->addr.af) {
 case 129:
  os_memset(&serv, 0, sizeof(serv));
  serv.sin_family = 129;
  serv.sin_addr.s_addr = nserv->addr.u.v4.s_addr;
  serv.sin_port = htons(nserv->port);
  addr = (struct sockaddr *) &serv;
  addrlen = sizeof(serv);
  sel_sock = sock;
  break;
 default:
  return -1;
 }

 if (sel_sock < 0) {
  wpa_printf(MSG_INFO,
      "RADIUS: No server socket available (af=%d sock=%d sock6=%d auth=%d",
      nserv->addr.af, sock, sock6, auth);
  return -1;
 }

 if (conf->force_client_addr) {
  switch (conf->client_addr.af) {
  case 129:
   os_memset(&claddr, 0, sizeof(claddr));
   claddr.sin_family = 129;
   claddr.sin_addr.s_addr = conf->client_addr.u.v4.s_addr;
   claddr.sin_port = htons(0);
   cl_addr = (struct sockaddr *) &claddr;
   claddrlen = sizeof(claddr);
   break;
  default:
   return -1;
  }

  if (bind(sel_sock, cl_addr, claddrlen) < 0) {
   wpa_printf(MSG_INFO, "bind[radius]: %s",
       strerror(errno));
   return -1;
  }
 }


 if (connect(sel_sock, (struct sockaddr *) &disconnect_addr,
      sizeof(disconnect_addr)) < 0)
  wpa_printf(MSG_INFO, "disconnect[radius]: %s", strerror(errno));

 if (connect(sel_sock, addr, addrlen) < 0) {
  wpa_printf(MSG_INFO, "connect[radius]: %s", strerror(errno));
  return -1;
 }


 switch (nserv->addr.af) {
 case 129:
  claddrlen = sizeof(claddr);
  if (getsockname(sel_sock, (struct sockaddr *) &claddr,
    &claddrlen) == 0) {
   wpa_printf(MSG_DEBUG, "RADIUS local address: %s:%u",
       inet_ntoa(claddr.sin_addr),
       ntohs(claddr.sin_port));
  }
  break;
 }


 if (auth)
  radius->auth_sock = sel_sock;
 else
  radius->acct_sock = sel_sock;

 return 0;
}
