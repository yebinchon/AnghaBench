
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY ;
typedef int BIO ;
typedef int ASN1_PCTX ;


 int KEY_OP_PUBLIC ;
 int ecx_key_print (int *,int const*,int,int *,int ) ;

__attribute__((used)) static int ecx_pub_print(BIO *bp, const EVP_PKEY *pkey, int indent,
                         ASN1_PCTX *ctx)
{
    return ecx_key_print(bp, pkey, indent, ctx, KEY_OP_PUBLIC);
}
