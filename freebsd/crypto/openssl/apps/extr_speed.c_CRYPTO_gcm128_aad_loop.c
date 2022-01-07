
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char* buf; int * gcm_ctx; } ;
typedef TYPE_1__ loopargs_t ;
typedef int GCM128_CONTEXT ;


 scalar_t__ COND (int ) ;
 int CRYPTO_gcm128_aad (int *,unsigned char*,int ) ;
 size_t D_GHASH ;
 int ** c ;
 int * lengths ;
 size_t testnum ;

__attribute__((used)) static int CRYPTO_gcm128_aad_loop(void *args)
{
    loopargs_t *tempargs = *(loopargs_t **) args;
    unsigned char *buf = tempargs->buf;
    GCM128_CONTEXT *gcm_ctx = tempargs->gcm_ctx;
    int count;
    for (count = 0; COND(c[D_GHASH][testnum]); count++)
        CRYPTO_gcm128_aad(gcm_ctx, buf, lengths[testnum]);
    return count;
}
