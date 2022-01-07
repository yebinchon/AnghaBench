
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2_packet_data {int dummy; } ;


 int PRIVSEP_CMD_L2_NOTIFY_AUTH_START ;
 int wpa_priv_cmd (struct l2_packet_data*,int ,int *,int ) ;

void l2_packet_notify_auth_start(struct l2_packet_data *l2)
{
 wpa_priv_cmd(l2, PRIVSEP_CMD_L2_NOTIFY_AUTH_START, ((void*)0), 0);
}
