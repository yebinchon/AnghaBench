
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostap_driver_data {int dummy; } ;
typedef int buf ;


 int MSG_ERROR ;
 int errno ;
 int handle_frame (struct hostap_driver_data*,unsigned char*,int) ;
 int recv (int,unsigned char*,int,int ) ;
 int strerror (int ) ;
 int wpa_printf (int ,char*,int ) ;

__attribute__((used)) static void handle_read(int sock, void *eloop_ctx, void *sock_ctx)
{
 struct hostap_driver_data *drv = eloop_ctx;
 int len;
 unsigned char buf[3000];

 len = recv(sock, buf, sizeof(buf), 0);
 if (len < 0) {
  wpa_printf(MSG_ERROR, "recv: %s", strerror(errno));
  return;
 }

 handle_frame(drv, buf, len);
}
