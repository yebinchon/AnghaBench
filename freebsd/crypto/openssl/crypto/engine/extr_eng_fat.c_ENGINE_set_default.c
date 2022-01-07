
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ENGINE ;


 unsigned int ENGINE_METHOD_CIPHERS ;
 unsigned int ENGINE_METHOD_DH ;
 unsigned int ENGINE_METHOD_DIGESTS ;
 unsigned int ENGINE_METHOD_DSA ;
 unsigned int ENGINE_METHOD_EC ;
 unsigned int ENGINE_METHOD_PKEY_ASN1_METHS ;
 unsigned int ENGINE_METHOD_PKEY_METHS ;
 unsigned int ENGINE_METHOD_RAND ;
 unsigned int ENGINE_METHOD_RSA ;
 int ENGINE_set_default_DH (int *) ;
 int ENGINE_set_default_DSA (int *) ;
 int ENGINE_set_default_EC (int *) ;
 int ENGINE_set_default_RAND (int *) ;
 int ENGINE_set_default_RSA (int *) ;
 int ENGINE_set_default_ciphers (int *) ;
 int ENGINE_set_default_digests (int *) ;
 int ENGINE_set_default_pkey_asn1_meths (int *) ;
 int ENGINE_set_default_pkey_meths (int *) ;

int ENGINE_set_default(ENGINE *e, unsigned int flags)
{
    if ((flags & ENGINE_METHOD_CIPHERS) && !ENGINE_set_default_ciphers(e))
        return 0;
    if ((flags & ENGINE_METHOD_DIGESTS) && !ENGINE_set_default_digests(e))
        return 0;

    if ((flags & ENGINE_METHOD_RSA) && !ENGINE_set_default_RSA(e))
        return 0;


    if ((flags & ENGINE_METHOD_DSA) && !ENGINE_set_default_DSA(e))
        return 0;


    if ((flags & ENGINE_METHOD_DH) && !ENGINE_set_default_DH(e))
        return 0;


    if ((flags & ENGINE_METHOD_EC) && !ENGINE_set_default_EC(e))
        return 0;

    if ((flags & ENGINE_METHOD_RAND) && !ENGINE_set_default_RAND(e))
        return 0;
    if ((flags & ENGINE_METHOD_PKEY_METHS)
        && !ENGINE_set_default_pkey_meths(e))
        return 0;
    if ((flags & ENGINE_METHOD_PKEY_ASN1_METHS)
        && !ENGINE_set_default_pkey_asn1_meths(e))
        return 0;
    return 1;
}
