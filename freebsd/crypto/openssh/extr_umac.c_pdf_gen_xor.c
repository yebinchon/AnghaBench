
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ cache; int prf_key; scalar_t__ nonce; } ;
typedef TYPE_1__ pdf_ctx ;
typedef int UINT8 ;
typedef int UINT64 ;
typedef scalar_t__ UINT32 ;


 int const LOW_BIT_MASK ;
 int aes_encryption (scalar_t__,scalar_t__,int ) ;

__attribute__((used)) static void pdf_gen_xor(pdf_ctx *pc, const UINT8 nonce[8], UINT8 buf[8])
{
    union {
        UINT8 tmp_nonce_lo[4];
        UINT32 align;
    } t;



    *(UINT32 *)t.tmp_nonce_lo = ((const UINT32 *)nonce)[1];
    t.tmp_nonce_lo[3] &= ~LOW_BIT_MASK;

    if ( (((UINT32 *)t.tmp_nonce_lo)[0] != ((UINT32 *)pc->nonce)[1]) ||
         (((const UINT32 *)nonce)[0] != ((UINT32 *)pc->nonce)[0]) )
    {
        ((UINT32 *)pc->nonce)[0] = ((const UINT32 *)nonce)[0];
        ((UINT32 *)pc->nonce)[1] = ((UINT32 *)t.tmp_nonce_lo)[0];
        aes_encryption(pc->nonce, pc->cache, pc->prf_key);
    }
}
