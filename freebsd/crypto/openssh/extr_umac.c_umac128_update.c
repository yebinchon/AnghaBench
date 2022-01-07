
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct umac_ctx {int hash; } ;


 int uhash_update (int *,int const*,long) ;

int umac_update(struct umac_ctx *ctx, const u_char *input, long len)



{
    uhash_update(&ctx->hash, input, len);
    return (1);
}
