
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int sha512; int sha384; int sha256; int sha1; int md5; } ;
struct crypto_hash {int alg; TYPE_1__ u; } ;
 int MD5Update (int *,int const*,size_t) ;
 int SHA1Update (int *,int const*,size_t) ;
 int sha256_process (int *,int const*,size_t) ;
 int sha384_process (int *,int const*,size_t) ;
 int sha512_process (int *,int const*,size_t) ;

void crypto_hash_update(struct crypto_hash *ctx, const u8 *data, size_t len)
{
 if (ctx == ((void*)0))
  return;

 switch (ctx->alg) {
 case 132:
 case 135:
  MD5Update(&ctx->u.md5, data, len);
  break;
 case 131:
 case 134:
  SHA1Update(&ctx->u.sha1, data, len);
  break;
 default:
  break;
 }
}
