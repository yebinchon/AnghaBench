
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_MD_CTX ;


 int EVP_MD_CTX_md_data (int *) ;
 int SHA1_Final (unsigned char*,int ) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static int test_sha1_final(EVP_MD_CTX *ctx, unsigned char *md)
{



    return SHA1_Final(md, EVP_MD_CTX_md_data(ctx));
}
