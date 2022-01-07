
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;
typedef int ASN1_VALUE ;
typedef int ASN1_ITEM ;


 int B64_write_ASN1 (int *,int *,int *,int,int const*) ;
 int BIO_printf (int *,char*,char const*) ;

int PEM_write_bio_ASN1_stream(BIO *out, ASN1_VALUE *val, BIO *in, int flags,
                              const char *hdr, const ASN1_ITEM *it)
{
    int r;
    BIO_printf(out, "-----BEGIN %s-----\n", hdr);
    r = B64_write_ASN1(out, val, in, flags, it);
    BIO_printf(out, "-----END %s-----\n", hdr);
    return r;
}
