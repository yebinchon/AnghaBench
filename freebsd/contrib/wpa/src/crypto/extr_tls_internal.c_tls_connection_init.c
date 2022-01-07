
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_global {int server_cred; scalar_t__ server; int cert_in_cb; int cb_ctx; int event_cb; } ;
struct tls_connection {int * server; int * client; struct tls_global* global; } ;


 int os_free (struct tls_connection*) ;
 struct tls_connection* os_zalloc (int) ;
 int * tlsv1_client_init () ;
 int tlsv1_client_set_cb (int *,int ,int ,int ) ;
 int * tlsv1_server_init (int ) ;

struct tls_connection * tls_connection_init(void *tls_ctx)
{
 struct tls_connection *conn;
 struct tls_global *global = tls_ctx;

 conn = os_zalloc(sizeof(*conn));
 if (conn == ((void*)0))
  return ((void*)0);
 conn->global = global;
 return conn;
}
