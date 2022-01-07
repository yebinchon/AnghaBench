
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;
typedef int ASN1_VALUE ;
typedef int ASN1_PCTX ;
typedef int ASN1_ITEM ;


 int BIO_printf (int *,char*,long) ;
 int COPY_SIZE (int *,long) ;
 int memcpy (long*,int **,int ) ;

__attribute__((used)) static int long_print(BIO *out, ASN1_VALUE **pval, const ASN1_ITEM *it,
                      int indent, const ASN1_PCTX *pctx)
{
    long l;

    memcpy(&l, pval, COPY_SIZE(*pval, l));
    return BIO_printf(out, "%ld\n", l);
}
