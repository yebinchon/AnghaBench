
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct umac_ctx {int pdf; int hash; } ;
typedef int UINT8 ;


 int pdf_gen_xor (int *,int const*,int *) ;
 int uhash_final (int *,int *) ;

int umac_final(struct umac_ctx *ctx, u_char tag[], const u_char nonce[8])

{
    uhash_final(&ctx->hash, (u_char *)tag);
    pdf_gen_xor(&ctx->pdf, (const UINT8 *)nonce, (UINT8 *)tag);

    return (1);
}
