
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hmac_sha1_ctx {int dummy; } ;
typedef int ctx ;


 int SHA1_DIGEST_SIZE ;
 scalar_t__ TEST_FAIL () ;
 int hmac_sha1_digest (struct hmac_sha1_ctx*,int ,int *) ;
 int hmac_sha1_set_key (struct hmac_sha1_ctx*,size_t,int const*) ;
 int hmac_sha1_update (struct hmac_sha1_ctx*,size_t const,int const*) ;
 int os_memset (struct hmac_sha1_ctx*,int ,int) ;

int hmac_sha1_vector(const u8 *key, size_t key_len, size_t num_elem,
       const u8 *addr[], const size_t *len, u8 *mac)
{
 struct hmac_sha1_ctx ctx;
 size_t i;

 if (TEST_FAIL())
  return -1;

 hmac_sha1_set_key(&ctx, key_len, key);
 for (i = 0; i < num_elem; i++)
  hmac_sha1_update(&ctx, len[i], addr[i]);
 hmac_sha1_digest(&ctx, SHA1_DIGEST_SIZE, mac);
 os_memset(&ctx, 0, sizeof(ctx));
 return 0;
}
