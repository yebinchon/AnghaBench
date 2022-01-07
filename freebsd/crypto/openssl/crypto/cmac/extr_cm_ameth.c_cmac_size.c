
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY ;


 int EVP_MAX_BLOCK_LENGTH ;

__attribute__((used)) static int cmac_size(const EVP_PKEY *pkey)
{
    return EVP_MAX_BLOCK_LENGTH;
}
