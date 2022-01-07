
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIGNUM ;


 int * BN_lebin2bn (unsigned char const*,unsigned int,int *) ;

__attribute__((used)) static int read_lebn(const unsigned char **in, unsigned int nbyte, BIGNUM **r)
{
    *r = BN_lebin2bn(*in, nbyte, ((void*)0));
    if (*r == ((void*)0))
        return 0;
    *in += nbyte;
    return 1;
}
