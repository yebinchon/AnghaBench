
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY ;


 int * do_b2i (unsigned char const**,long,int) ;

EVP_PKEY *b2i_PublicKey(const unsigned char **in, long length)
{
    return do_b2i(in, length, 1);
}
