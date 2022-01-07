
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int asn1_ps_func ;
typedef int BIO ;


 int BIO_C_SET_PREFIX ;
 int asn1_bio_set_ex (int *,int ,int *,int *) ;

int BIO_asn1_set_prefix(BIO *b, asn1_ps_func *prefix,
                        asn1_ps_func *prefix_free)
{
    return asn1_bio_set_ex(b, BIO_C_SET_PREFIX, prefix, prefix_free);
}
