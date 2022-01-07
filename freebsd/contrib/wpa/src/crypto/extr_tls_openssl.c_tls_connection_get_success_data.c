
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpabuf {int dummy; } ;
struct tls_connection {int ssl; } ;
typedef int SSL_SESSION ;


 struct wpabuf const* SSL_SESSION_get_ex_data (int *,scalar_t__) ;
 int * SSL_get_session (int ) ;
 scalar_t__ tls_ex_idx_session ;

const struct wpabuf *
tls_connection_get_success_data(struct tls_connection *conn)
{
 SSL_SESSION *sess;

 if (tls_ex_idx_session < 0 ||
     !(sess = SSL_get_session(conn->ssl)))
  return ((void*)0);
 return SSL_SESSION_get_ex_data(sess, tls_ex_idx_session);
}
