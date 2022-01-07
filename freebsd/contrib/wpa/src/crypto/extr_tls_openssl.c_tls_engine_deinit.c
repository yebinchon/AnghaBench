
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tls_connection {int * engine; int * private_key; } ;


 int ENGINE_finish (int *) ;
 int EVP_PKEY_free (int *) ;
 int MSG_DEBUG ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void tls_engine_deinit(struct tls_connection *conn)
{

 wpa_printf(MSG_DEBUG, "ENGINE: engine deinit");
 if (conn->private_key) {
  EVP_PKEY_free(conn->private_key);
  conn->private_key = ((void*)0);
 }
 if (conn->engine) {

  ENGINE_finish(conn->engine);

  conn->engine = ((void*)0);
 }

}
