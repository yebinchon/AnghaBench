
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct tls_connection {int dummy; } ;


 struct wpabuf* wolfssl_connection_handshake (struct tls_connection*,struct wpabuf const*,struct wpabuf**,int ) ;

struct wpabuf * tls_connection_handshake(void *tls_ctx,
      struct tls_connection *conn,
      const struct wpabuf *in_data,
      struct wpabuf **appl_data)
{
 return wolfssl_connection_handshake(conn, in_data, appl_data, 0);
}
