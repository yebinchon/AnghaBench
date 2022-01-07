
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIGNUM ;
typedef int ASN1_INTEGER ;


 int BN_RAND_BOTTOM_ANY ;
 int BN_RAND_TOP_ANY ;
 int BN_free (int *) ;
 int * BN_new () ;
 int BN_rand (int *,int ,int ,int ) ;
 int BN_to_ASN1_INTEGER (int *,int *) ;
 int SERIAL_RAND_BITS ;

int rand_serial(BIGNUM *b, ASN1_INTEGER *ai)
{
    BIGNUM *btmp;
    int ret = 0;

    btmp = b == ((void*)0) ? BN_new() : b;
    if (btmp == ((void*)0))
        return 0;

    if (!BN_rand(btmp, SERIAL_RAND_BITS, BN_RAND_TOP_ANY, BN_RAND_BOTTOM_ANY))
        goto error;
    if (ai && !BN_to_ASN1_INTEGER(btmp, ai))
        goto error;

    ret = 1;

 error:

    if (btmp != b)
        BN_free(btmp);

    return ret;
}
