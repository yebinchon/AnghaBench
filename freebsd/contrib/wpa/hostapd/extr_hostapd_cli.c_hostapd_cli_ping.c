
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ _wpa_ctrl_command (scalar_t__,char*,int ) ;
 scalar_t__ ctrl_conn ;
 int ctrl_ifname ;
 int eloop_register_timeout (int ,int ,void (*) (void*,void*),int *,int *) ;
 int hostapd_cli_close_connection () ;
 scalar_t__ hostapd_cli_reconnect (int ) ;
 int hostapd_cli_recv_pending (scalar_t__,int,int ) ;
 int ping_interval ;
 int printf (char*) ;

__attribute__((used)) static void hostapd_cli_ping(void *eloop_ctx, void *timeout_ctx)
{
 if (ctrl_conn && _wpa_ctrl_command(ctrl_conn, "PING", 0)) {
  printf("Connection to hostapd lost - trying to reconnect\n");
  hostapd_cli_close_connection();
 }
 if (!ctrl_conn && hostapd_cli_reconnect(ctrl_ifname) == 0)
  printf("Connection to hostapd re-established\n");
 if (ctrl_conn)
  hostapd_cli_recv_pending(ctrl_conn, 1, 0);
 eloop_register_timeout(ping_interval, 0, hostapd_cli_ping, ((void*)0), ((void*)0));
}
