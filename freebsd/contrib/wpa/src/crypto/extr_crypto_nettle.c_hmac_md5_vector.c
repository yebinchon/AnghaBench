
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct hmac_md5_ctx {int dummy; } ;
typedef int ctx ;


 int MD5_DIGEST_SIZE ;
 scalar_t__ TEST_FAIL () ;
 int hmac_md5_digest (struct hmac_md5_ctx*,int ,int *) ;
 int hmac_md5_set_key (struct hmac_md5_ctx*,size_t,int const*) ;
 int hmac_md5_update (struct hmac_md5_ctx*,size_t const,int const*) ;
 int os_memset (struct hmac_md5_ctx*,int ,int) ;

int hmac_md5_vector(const u8 *key, size_t key_len, size_t num_elem,
      const u8 *addr[], const size_t *len, u8 *mac)
{
 struct hmac_md5_ctx ctx;
 size_t i;

 if (TEST_FAIL())
  return -1;

 hmac_md5_set_key(&ctx, key_len, key);
 for (i = 0; i < num_elem; i++)
  hmac_md5_update(&ctx, len[i], addr[i]);
 hmac_md5_digest(&ctx, MD5_DIGEST_SIZE, mac);
 os_memset(&ctx, 0, sizeof(ctx));
 return 0;
}
