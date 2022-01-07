
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ASN1_VALUE ;
typedef int ASN1_TLC ;
typedef int ASN1_ITEM ;


 int ASN1_item_ex_free (int **,int const*) ;
 int asn1_item_embed_d2i (int **,unsigned char const**,long,int const*,int,int,char,int *,int ) ;

int ASN1_item_ex_d2i(ASN1_VALUE **pval, const unsigned char **in, long len,
                     const ASN1_ITEM *it,
                     int tag, int aclass, char opt, ASN1_TLC *ctx)
{
    int rv;
    rv = asn1_item_embed_d2i(pval, in, len, it, tag, aclass, opt, ctx, 0);
    if (rv <= 0)
        ASN1_item_ex_free(pval, it);
    return rv;
}
