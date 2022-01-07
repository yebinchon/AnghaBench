
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSG_DEBUG ;
 int SSL_FILETYPE_PEM ;
 int wolfSSL_CTX_LoadCRLBuffer (void*,int *,int ,int ) ;
 int wpa_printf (int ,char*,int) ;

int tls_global_set_verify(void *tls_ctx, int check_crl, int strict)
{
 wpa_printf(MSG_DEBUG, "SSL: global set verify: %d", check_crl);

 if (check_crl) {

  wolfSSL_CTX_LoadCRLBuffer(tls_ctx, ((void*)0), 0, SSL_FILETYPE_PEM);
 }

 return 0;
}
