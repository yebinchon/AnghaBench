
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int data; } ;
typedef TYPE_1__ EVP_PKEY_CTX ;


 int CMAC_CTX_copy (int ,int ) ;
 int pkey_cmac_init (TYPE_1__*) ;

__attribute__((used)) static int pkey_cmac_copy(EVP_PKEY_CTX *dst, EVP_PKEY_CTX *src)
{
    if (!pkey_cmac_init(dst))
        return 0;
    if (!CMAC_CTX_copy(dst->data, src->data))
        return 0;
    return 1;
}
