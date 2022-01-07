
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_data {scalar_t__ tls_session_lifetime; struct tls_data* check_cert_subject; struct tls_data* ocsp_stapling_response; struct tls_data* ca_cert; int * ssl; } ;
struct tls_context {scalar_t__ tls_session_lifetime; struct tls_context* check_cert_subject; struct tls_context* ocsp_stapling_response; struct tls_context* ca_cert; int * ssl; } ;
typedef int SSL_CTX ;


 int CRYPTO_cleanup_all_ex_data () ;
 int ENGINE_cleanup () ;
 int ERR_free_strings () ;
 int ERR_remove_thread_state (int *) ;
 int EVP_cleanup () ;
 int SSL_CTX_flush_sessions (int *,int ) ;
 int SSL_CTX_free (int *) ;
 struct tls_data* SSL_CTX_get_app_data (int *) ;
 int os_free (struct tls_data*) ;
 struct tls_data* tls_global ;
 scalar_t__ tls_openssl_ref_count ;

void tls_deinit(void *ssl_ctx)
{
 struct tls_data *data = ssl_ctx;
 SSL_CTX *ssl = data->ssl;
 struct tls_context *context = SSL_CTX_get_app_data(ssl);
 if (context != tls_global)
  os_free(context);
 if (data->tls_session_lifetime > 0)
  SSL_CTX_flush_sessions(ssl, 0);
 os_free(data->ca_cert);
 SSL_CTX_free(ssl);

 tls_openssl_ref_count--;
 if (tls_openssl_ref_count == 0) {




  ENGINE_cleanup();

  CRYPTO_cleanup_all_ex_data();
  ERR_remove_thread_state(((void*)0));
  ERR_free_strings();
  EVP_cleanup();

  os_free(tls_global->ocsp_stapling_response);
  tls_global->ocsp_stapling_response = ((void*)0);
  os_free(tls_global);
  tls_global = ((void*)0);
 }

 os_free(data->check_cert_subject);
 os_free(data);
}
