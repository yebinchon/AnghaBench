
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int tls_version; } ;
struct tlsv1_server {scalar_t__ state; int master_secret; TYPE_1__ rl; int const* server_random; int const* client_random; } ;


 scalar_t__ ESTABLISHED ;
 int TLS_MASTER_SECRET_LEN ;
 int TLS_RANDOM_LEN ;
 int WPA_PUT_BE16 (int *,size_t) ;
 int os_free (int *) ;
 int * os_malloc (size_t) ;
 int os_memcpy (int *,int const*,size_t) ;
 int tls_prf (int ,int ,int ,char const*,int *,size_t,int *,size_t) ;

int tlsv1_server_prf(struct tlsv1_server *conn, const char *label,
       const u8 *context, size_t context_len,
       int server_random_first, u8 *out, size_t out_len)
{
 u8 *seed, *pos;
 size_t seed_len = 2 * TLS_RANDOM_LEN;
 int res;

 if (conn->state != ESTABLISHED)
  return -1;

 if (context_len > 65535)
  return -1;

 if (context)
  seed_len += 2 + context_len;

 seed = os_malloc(seed_len);
 if (!seed)
  return -1;

 if (server_random_first) {
  os_memcpy(seed, conn->server_random, TLS_RANDOM_LEN);
  os_memcpy(seed + TLS_RANDOM_LEN, conn->client_random,
     TLS_RANDOM_LEN);
 } else {
  os_memcpy(seed, conn->client_random, TLS_RANDOM_LEN);
  os_memcpy(seed + TLS_RANDOM_LEN, conn->server_random,
     TLS_RANDOM_LEN);
 }

 if (context) {
  pos = seed + 2 * TLS_RANDOM_LEN;
  WPA_PUT_BE16(pos, context_len);
  pos += 2;
  os_memcpy(pos, context, context_len);
 }

 res = tls_prf(conn->rl.tls_version,
        conn->master_secret, TLS_MASTER_SECRET_LEN,
        label, seed, seed_len, out, out_len);
 os_free(seed);
 return res;
}
