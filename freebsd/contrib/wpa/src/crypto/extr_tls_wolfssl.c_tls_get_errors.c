
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSG_INFO ;
 int wolfSSL_ERR_error_string (unsigned long,int *) ;
 unsigned long wolfSSL_ERR_peek_last_error_line (int *,int *) ;
 int wpa_printf (int ,char*,int ) ;

int tls_get_errors(void *tls_ctx)
{
 return 0;
}
