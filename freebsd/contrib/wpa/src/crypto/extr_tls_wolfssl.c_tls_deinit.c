
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_context {int dummy; } ;
typedef int WOLFSSL_CTX ;


 int os_free (struct tls_context*) ;
 struct tls_context* tls_global ;
 scalar_t__ tls_ref_count ;
 int wolfSSL_CTX_free (int *) ;
 struct tls_context* wolfSSL_CTX_get_ex_data (void*,int ) ;
 int wolfSSL_Cleanup () ;

void tls_deinit(void *ssl_ctx)
{
 struct tls_context *context = wolfSSL_CTX_get_ex_data(ssl_ctx, 0);

 if (context != tls_global)
  os_free(context);

 wolfSSL_CTX_free((WOLFSSL_CTX *) ssl_ctx);

 tls_ref_count--;
 if (tls_ref_count == 0) {
  wolfSSL_Cleanup();
  os_free(tls_global);
  tls_global = ((void*)0);
 }
}
