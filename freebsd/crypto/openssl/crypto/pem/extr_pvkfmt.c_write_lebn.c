
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIGNUM ;


 int BN_bn2lebinpad (int const*,unsigned char*,int) ;

__attribute__((used)) static void write_lebn(unsigned char **out, const BIGNUM *bn, int len)
{
    BN_bn2lebinpad(bn, *out, len);
    *out += len;
}
