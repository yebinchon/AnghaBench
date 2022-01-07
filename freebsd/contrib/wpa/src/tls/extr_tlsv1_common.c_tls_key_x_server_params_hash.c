
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct crypto_hash {int dummy; } ;
typedef int hash ;


 int CRYPTO_HASH_ALG_MD5 ;
 int CRYPTO_HASH_ALG_SHA1 ;
 size_t MD5_MAC_LEN ;
 size_t TLS_RANDOM_LEN ;
 scalar_t__ crypto_hash_finish (struct crypto_hash*,int *,size_t*) ;
 struct crypto_hash* crypto_hash_init (int ,int *,int ) ;
 int crypto_hash_update (struct crypto_hash*,int const*,size_t) ;

int tls_key_x_server_params_hash(u16 tls_version, const u8 *client_random,
     const u8 *server_random,
     const u8 *server_params,
     size_t server_params_len, u8 *hash)
{
 u8 *hpos;
 size_t hlen;
 struct crypto_hash *ctx;

 hpos = hash;

 ctx = crypto_hash_init(CRYPTO_HASH_ALG_MD5, ((void*)0), 0);
 if (ctx == ((void*)0))
  return -1;
 crypto_hash_update(ctx, client_random, TLS_RANDOM_LEN);
 crypto_hash_update(ctx, server_random, TLS_RANDOM_LEN);
 crypto_hash_update(ctx, server_params, server_params_len);
 hlen = MD5_MAC_LEN;
 if (crypto_hash_finish(ctx, hash, &hlen) < 0)
  return -1;
 hpos += hlen;

 ctx = crypto_hash_init(CRYPTO_HASH_ALG_SHA1, ((void*)0), 0);
 if (ctx == ((void*)0))
  return -1;
 crypto_hash_update(ctx, client_random, TLS_RANDOM_LEN);
 crypto_hash_update(ctx, server_random, TLS_RANDOM_LEN);
 crypto_hash_update(ctx, server_params, server_params_len);
 hlen = hash + sizeof(hash) - hpos;
 if (crypto_hash_finish(ctx, hpos, &hlen) < 0)
  return -1;
 hpos += hlen;
 return hpos - hash;
}
