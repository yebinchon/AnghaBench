
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_context {int dummy; } ;
struct tls_config {char* openssl_ciphers; int tls_session_lifetime; } ;
typedef void WOLFSSL_CTX ;


 int MSG_ERROR ;
 int SSL_SESS_CACHE_CLIENT ;
 int SSL_SESS_CACHE_SERVER ;
 int os_free (struct tls_context*) ;
 int remove_session_cb ;
 struct tls_context* tls_context_new (struct tls_config const*) ;
 int tls_deinit (void*) ;
 struct tls_context* tls_global ;
 scalar_t__ tls_ref_count ;
 void* wolfSSL_CTX_new (int ) ;
 int wolfSSL_CTX_sess_set_remove_cb (void*,int ) ;
 int wolfSSL_CTX_set_cipher_list (void*,char const*) ;
 int wolfSSL_CTX_set_ex_data (void*,int ,struct tls_context*) ;
 int wolfSSL_CTX_set_quiet_shutdown (void*,int) ;
 int wolfSSL_CTX_set_session_cache_mode (void*,int ) ;
 int wolfSSL_CTX_set_timeout (void*,int ) ;
 int wolfSSL_Debugging_ON () ;
 scalar_t__ wolfSSL_Init () ;
 int wolfSSL_SetIORecv (void*,int ) ;
 int wolfSSL_SetIOSend (void*,int ) ;
 int wolfSSLv23_client_method () ;
 int wolfssl_receive_cb ;
 int wolfssl_send_cb ;
 int wpa_printf (int ,char*,char const*) ;

void * tls_init(const struct tls_config *conf)
{
 WOLFSSL_CTX *ssl_ctx;
 struct tls_context *context;
 const char *ciphers;





 context = tls_context_new(conf);
 if (!context)
  return ((void*)0);

 if (tls_ref_count == 0) {
  tls_global = context;

  if (wolfSSL_Init() < 0)
   return ((void*)0);

 }

 tls_ref_count++;


 ssl_ctx = wolfSSL_CTX_new(wolfSSLv23_client_method());
 if (!ssl_ctx) {
  tls_ref_count--;
  if (context != tls_global)
   os_free(context);
  if (tls_ref_count == 0) {
   os_free(tls_global);
   tls_global = ((void*)0);
  }
 }
 wolfSSL_SetIORecv(ssl_ctx, wolfssl_receive_cb);
 wolfSSL_SetIOSend(ssl_ctx, wolfssl_send_cb);
 wolfSSL_CTX_set_ex_data(ssl_ctx, 0, context);

 if (conf->tls_session_lifetime > 0) {
  wolfSSL_CTX_set_quiet_shutdown(ssl_ctx, 1);
  wolfSSL_CTX_set_session_cache_mode(ssl_ctx,
         SSL_SESS_CACHE_SERVER);
  wolfSSL_CTX_set_timeout(ssl_ctx, conf->tls_session_lifetime);
  wolfSSL_CTX_sess_set_remove_cb(ssl_ctx, remove_session_cb);
 } else {
  wolfSSL_CTX_set_session_cache_mode(ssl_ctx,
         SSL_SESS_CACHE_CLIENT);
 }

 if (conf && conf->openssl_ciphers)
  ciphers = conf->openssl_ciphers;
 else
  ciphers = "ALL";
 if (wolfSSL_CTX_set_cipher_list(ssl_ctx, ciphers) != 1) {
  wpa_printf(MSG_ERROR,
      "wolfSSL: Failed to set cipher string '%s'",
      ciphers);
  tls_deinit(ssl_ctx);
  return ((void*)0);
 }

 return ssl_ctx;
}
