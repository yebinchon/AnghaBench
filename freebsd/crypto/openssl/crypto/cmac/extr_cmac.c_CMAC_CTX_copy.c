
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int nlast_block; int last_block; int tbl; int k2; int k1; int cctx; } ;
typedef TYPE_1__ CMAC_CTX ;


 int EVP_CIPHER_CTX_block_size (int ) ;
 int EVP_CIPHER_CTX_copy (int ,int ) ;
 int memcpy (int ,int ,int) ;

int CMAC_CTX_copy(CMAC_CTX *out, const CMAC_CTX *in)
{
    int bl;
    if (in->nlast_block == -1)
        return 0;
    if (!EVP_CIPHER_CTX_copy(out->cctx, in->cctx))
        return 0;
    bl = EVP_CIPHER_CTX_block_size(in->cctx);
    memcpy(out->k1, in->k1, bl);
    memcpy(out->k2, in->k2, bl);
    memcpy(out->tbl, in->tbl, bl);
    memcpy(out->last_block, in->last_block, bl);
    out->nlast_block = in->nlast_block;
    return 1;
}
