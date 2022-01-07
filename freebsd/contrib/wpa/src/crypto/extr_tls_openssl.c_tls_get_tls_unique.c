
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tls_connection {int ssl; scalar_t__ server; } ;


 size_t SSL_get_finished (int ,int *,size_t) ;
 size_t SSL_get_peer_finished (int ,int *,size_t) ;
 int SSL_session_reused (int ) ;

int tls_get_tls_unique(struct tls_connection *conn, u8 *buf, size_t max_len)
{
 size_t len;
 int reused;

 reused = SSL_session_reused(conn->ssl);
 if ((conn->server && !reused) || (!conn->server && reused))
  len = SSL_get_peer_finished(conn->ssl, buf, max_len);
 else
  len = SSL_get_finished(conn->ssl, buf, max_len);

 if (len == 0 || len > max_len)
  return -1;

 return len;
}
