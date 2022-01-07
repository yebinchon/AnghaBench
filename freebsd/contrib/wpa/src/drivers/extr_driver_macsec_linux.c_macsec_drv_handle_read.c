
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int MSG_ERROR ;
 int errno ;
 int macsec_drv_handle_data (void*,unsigned char*,int) ;
 int recv (int,unsigned char*,int,int ) ;
 int strerror (int ) ;
 int wpa_printf (int ,char*,int ) ;

__attribute__((used)) static void macsec_drv_handle_read(int sock, void *eloop_ctx, void *sock_ctx)
{
 int len;
 unsigned char buf[3000];

 len = recv(sock, buf, sizeof(buf), 0);
 if (len < 0) {
  wpa_printf(MSG_ERROR, "macsec_linux: recv: %s",
      strerror(errno));
  return;
 }

 macsec_drv_handle_data(eloop_ctx, buf, len);
}
