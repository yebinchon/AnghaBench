
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ctrl_conn ;
 int hostapd_cli_recv_pending (int ,int ,int ) ;

__attribute__((used)) static void hostapd_cli_receive(int sock, void *eloop_ctx, void *sock_ctx)
{
 hostapd_cli_recv_pending(ctrl_conn, 0, 0);
}
