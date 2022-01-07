
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct tls_connection {int dummy; } ;



int tls_connection_set_verify(void *tls_ctx, struct tls_connection *conn,
         int verify_peer, unsigned int flags,
         const u8 *session_ctx, size_t session_ctx_len)
{
 return -1;
}
