
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_MD_CTX ;


 int init (int *,float) ;

__attribute__((used)) static int shake_init(EVP_MD_CTX *evp_ctx)
{
    return init(evp_ctx, '\x1f');
}
