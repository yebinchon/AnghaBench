
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_driver_privsep_data {int priv_addr; int priv_socket; } ;
struct sockaddr {int dummy; } ;
typedef int cmd ;


 int MSG_ERROR ;
 int errno ;
 int sendto (int ,int*,int,int ,struct sockaddr*,int) ;
 int strerror (int ) ;
 int wpa_printf (int ,char*,int ) ;

__attribute__((used)) static int wpa_priv_reg_cmd(struct wpa_driver_privsep_data *drv, int cmd)
{
 int res;

 res = sendto(drv->priv_socket, &cmd, sizeof(cmd), 0,
       (struct sockaddr *) &drv->priv_addr,
       sizeof(drv->priv_addr));
 if (res < 0)
  wpa_printf(MSG_ERROR, "sendto: %s", strerror(errno));
 return res < 0 ? -1 : 0;
}
