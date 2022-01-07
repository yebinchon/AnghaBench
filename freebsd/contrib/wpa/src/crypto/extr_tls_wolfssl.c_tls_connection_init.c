
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_connection {int ssl; int context; int output; int input; } ;
typedef int WOLFSSL_CTX ;


 int MSG_DEBUG ;
 int os_free (struct tls_connection*) ;
 struct tls_connection* os_zalloc (int) ;
 int wolfSSL_CTX_get_ex_data (int *,int ) ;
 int wolfSSL_KeepArrays (int ) ;
 int wolfSSL_KeepHandshakeResources (int ) ;
 int wolfSSL_SetIOReadCtx (int ,int *) ;
 int wolfSSL_SetIOWriteCtx (int ,int *) ;
 int wolfSSL_UseClientSuites (int ) ;
 int wolfSSL_new (int *) ;
 int wolfSSL_set_ex_data (int ,int ,struct tls_connection*) ;
 int wpa_printf (int ,char*) ;

struct tls_connection * tls_connection_init(void *tls_ctx)
{
 WOLFSSL_CTX *ssl_ctx = tls_ctx;
 struct tls_connection *conn;

 wpa_printf(MSG_DEBUG, "SSL: connection init");

 conn = os_zalloc(sizeof(*conn));
 if (!conn)
  return ((void*)0);
 conn->ssl = wolfSSL_new(ssl_ctx);
 if (!conn->ssl) {
  os_free(conn);
  return ((void*)0);
 }

 wolfSSL_SetIOReadCtx(conn->ssl, &conn->input);
 wolfSSL_SetIOWriteCtx(conn->ssl, &conn->output);
 wolfSSL_set_ex_data(conn->ssl, 0, conn);
 conn->context = wolfSSL_CTX_get_ex_data(ssl_ctx, 0);



 wolfSSL_KeepArrays(conn->ssl);
 wolfSSL_KeepHandshakeResources(conn->ssl);
 wolfSSL_UseClientSuites(conn->ssl);

 return conn;
}
