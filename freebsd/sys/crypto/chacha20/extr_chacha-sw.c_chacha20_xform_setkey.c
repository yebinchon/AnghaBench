
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct chacha_ctx {int dummy; } ;


 int CHACHA_MINKEYLEN ;
 int EINVAL ;
 int ENOMEM ;
 int M_CRYPTO_DATA ;
 int M_NOWAIT ;
 int M_ZERO ;
 int chacha_keysetup (struct chacha_ctx*,int const*,int) ;
 struct chacha_ctx* malloc (int,int ,int) ;

__attribute__((used)) static int
chacha20_xform_setkey(u_int8_t **sched, const u_int8_t *key, int len)
{
 struct chacha_ctx *ctx;

 if (len != CHACHA_MINKEYLEN && len != 32)
  return (EINVAL);

 ctx = malloc(sizeof(*ctx), M_CRYPTO_DATA, M_NOWAIT | M_ZERO);
 *sched = (void *)ctx;
 if (ctx == ((void*)0))
  return (ENOMEM);

 chacha_keysetup(ctx, key, len * 8);
 return (0);
}
