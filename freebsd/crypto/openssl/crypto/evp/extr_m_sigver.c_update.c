
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_MD_CTX ;


 int EVP_F_UPDATE ;
 int EVP_R_ONLY_ONESHOT_SUPPORTED ;
 int EVPerr (int ,int ) ;

__attribute__((used)) static int update(EVP_MD_CTX *ctx, const void *data, size_t datalen)
{
    EVPerr(EVP_F_UPDATE, EVP_R_ONLY_ONESHOT_SUPPORTED);
    return 0;
}
