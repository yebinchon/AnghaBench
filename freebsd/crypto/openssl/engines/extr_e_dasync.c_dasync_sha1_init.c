
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_MD_CTX ;


 int SHA1_Init (int ) ;
 int data (int *) ;
 int dummy_pause_job () ;

__attribute__((used)) static int dasync_sha1_init(EVP_MD_CTX *ctx)
{
    dummy_pause_job();

    return SHA1_Init(data(ctx));
}
