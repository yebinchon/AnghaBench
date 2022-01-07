
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ameth; } ;
typedef TYPE_1__ EVP_PKEY ;
typedef int DH ;


 int * d2i_DHparams (int *,unsigned char const**,long) ;
 int * d2i_DHxparams (int *,unsigned char const**,long) ;
 int dhx_asn1_meth ;

__attribute__((used)) static DH *d2i_dhp(const EVP_PKEY *pkey, const unsigned char **pp,
                   long length)
{
    if (pkey->ameth == &dhx_asn1_meth)
        return d2i_DHxparams(((void*)0), pp, length);
    return d2i_DHparams(((void*)0), pp, length);
}
