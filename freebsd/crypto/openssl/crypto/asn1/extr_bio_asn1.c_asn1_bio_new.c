
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO_ASN1_BUF_CTX ;
typedef int BIO ;


 int BIO_set_data (int *,int *) ;
 int BIO_set_init (int *,int) ;
 int DEFAULT_ASN1_BUF_SIZE ;
 int OPENSSL_free (int *) ;
 int * OPENSSL_zalloc (int) ;
 int asn1_bio_init (int *,int ) ;

__attribute__((used)) static int asn1_bio_new(BIO *b)
{
    BIO_ASN1_BUF_CTX *ctx = OPENSSL_zalloc(sizeof(*ctx));

    if (ctx == ((void*)0))
        return 0;
    if (!asn1_bio_init(ctx, DEFAULT_ASN1_BUF_SIZE)) {
        OPENSSL_free(ctx);
        return 0;
    }
    BIO_set_data(b, ctx);
    BIO_set_init(b, 1);

    return 1;
}
