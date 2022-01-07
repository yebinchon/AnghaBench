
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radius_client_data {scalar_t__ auth_serv_sock; scalar_t__ auth_serv_sock6; struct hostapd_radius_servers* conf; } ;
struct hostapd_radius_servers {int auth_server; } ;


 int MSG_INFO ;
 int PF_INET ;
 int PF_INET6 ;
 scalar_t__ RADIUS_AUTH ;
 int SOCK_DGRAM ;
 scalar_t__ eloop_register_read_sock (scalar_t__,int ,struct radius_client_data*,void*) ;
 int errno ;
 int radius_change_server (struct radius_client_data*,int ,int *,scalar_t__,scalar_t__,int) ;
 int radius_client_disable_pmtu_discovery (scalar_t__) ;
 int radius_client_receive ;
 int radius_close_auth_sockets (struct radius_client_data*) ;
 void* socket (int ,int ,int ) ;
 int strerror (int ) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int radius_client_init_auth(struct radius_client_data *radius)
{
 struct hostapd_radius_servers *conf = radius->conf;
 int ok = 0;

 radius_close_auth_sockets(radius);

 radius->auth_serv_sock = socket(PF_INET, SOCK_DGRAM, 0);
 if (radius->auth_serv_sock < 0)
  wpa_printf(MSG_INFO, "RADIUS: socket[PF_INET,SOCK_DGRAM]: %s",
      strerror(errno));
 else {
  radius_client_disable_pmtu_discovery(radius->auth_serv_sock);
  ok++;
 }
 if (ok == 0)
  return -1;

 radius_change_server(radius, conf->auth_server, ((void*)0),
        radius->auth_serv_sock, radius->auth_serv_sock6,
        1);

 if (radius->auth_serv_sock >= 0 &&
     eloop_register_read_sock(radius->auth_serv_sock,
         radius_client_receive, radius,
         (void *) RADIUS_AUTH)) {
  wpa_printf(MSG_INFO, "RADIUS: Could not register read socket for authentication server");
  radius_close_auth_sockets(radius);
  return -1;
 }
 return 0;
}
