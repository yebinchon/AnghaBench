
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OPENSSL_LHASH ;
typedef int FILE ;
typedef int BIO ;


 int BIO_NOCLOSE ;
 int BIO_free (int *) ;
 int * BIO_new (int ) ;
 int BIO_s_file () ;
 int BIO_set_fp (int *,int *,int ) ;
 int OPENSSL_LH_node_usage_stats_bio (int const*,int *) ;

void OPENSSL_LH_node_usage_stats(const OPENSSL_LHASH *lh, FILE *fp)
{
    BIO *bp;

    bp = BIO_new(BIO_s_file());
    if (bp == ((void*)0))
        return;
    BIO_set_fp(bp, fp, BIO_NOCLOSE);
    OPENSSL_LH_node_usage_stats_bio(lh, bp);
    BIO_free(bp);
}
