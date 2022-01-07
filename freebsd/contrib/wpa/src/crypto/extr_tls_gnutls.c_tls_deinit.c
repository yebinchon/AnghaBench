
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_global {struct tls_global* ocsp_stapling_response; struct tls_global* session_data; int xcred; scalar_t__ params_set; } ;


 int gnutls_certificate_free_credentials (int ) ;
 int gnutls_global_deinit () ;
 int os_free (struct tls_global*) ;
 scalar_t__ tls_gnutls_ref_count ;

void tls_deinit(void *ssl_ctx)
{
 struct tls_global *global = ssl_ctx;
 if (global) {
  if (global->params_set)
   gnutls_certificate_free_credentials(global->xcred);
  os_free(global->session_data);
  os_free(global->ocsp_stapling_response);
  os_free(global);
 }

 tls_gnutls_ref_count--;
 if (tls_gnutls_ref_count == 0)
  gnutls_global_deinit();
}
