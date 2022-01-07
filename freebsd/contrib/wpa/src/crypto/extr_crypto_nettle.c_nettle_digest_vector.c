
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nettle_hash {int context_size; int digest_size; int (* digest ) (void*,int ,int *) ;int (* update ) (void*,size_t const,int const*) ;int (* init ) (void*) ;} ;


 scalar_t__ TEST_FAIL () ;
 int bin_clear_free (void*,int ) ;
 void* os_malloc (int ) ;
 int stub1 (void*) ;
 int stub2 (void*,size_t const,int const*) ;
 int stub3 (void*,int ,int *) ;

__attribute__((used)) static int nettle_digest_vector(const struct nettle_hash *alg, size_t num_elem,
    const u8 *addr[], const size_t *len, u8 *mac)
{
 void *ctx;
 size_t i;

 if (TEST_FAIL())
  return -1;

 ctx = os_malloc(alg->context_size);
 if (!ctx)
  return -1;
 alg->init(ctx);
 for (i = 0; i < num_elem; i++)
  alg->update(ctx, len[i], addr[i]);
 alg->digest(ctx, alg->digest_size, mac);
 bin_clear_free(ctx, alg->context_size);
 return 0;
}
