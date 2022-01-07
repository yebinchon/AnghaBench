
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERR_error_string (unsigned long,int *) ;
 unsigned long ERR_get_error () ;
 int MSG_INFO ;
 int wpa_printf (int ,char*,int ) ;

int tls_get_errors(void *ssl_ctx)
{
 int count = 0;
 unsigned long err;

 while ((err = ERR_get_error())) {
  wpa_printf(MSG_INFO, "TLS - SSL error: %s",
      ERR_error_string(err, ((void*)0)));
  count++;
 }

 return count;
}
