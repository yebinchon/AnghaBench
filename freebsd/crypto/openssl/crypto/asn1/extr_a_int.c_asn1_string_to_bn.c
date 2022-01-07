
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; int length; int data; } ;
typedef int BIGNUM ;
typedef TYPE_1__ ASN1_INTEGER ;


 int ASN1_F_ASN1_STRING_TO_BN ;
 int ASN1_R_BN_LIB ;
 int ASN1_R_WRONG_INTEGER_TYPE ;
 int ASN1err (int ,int ) ;
 int * BN_bin2bn (int ,int ,int *) ;
 int BN_set_negative (int *,int) ;
 int V_ASN1_NEG ;

__attribute__((used)) static BIGNUM *asn1_string_to_bn(const ASN1_INTEGER *ai, BIGNUM *bn,
                                 int itype)
{
    BIGNUM *ret;

    if ((ai->type & ~V_ASN1_NEG) != itype) {
        ASN1err(ASN1_F_ASN1_STRING_TO_BN, ASN1_R_WRONG_INTEGER_TYPE);
        return ((void*)0);
    }

    ret = BN_bin2bn(ai->data, ai->length, bn);
    if (ret == ((void*)0)) {
        ASN1err(ASN1_F_ASN1_STRING_TO_BN, ASN1_R_BN_LIB);
        return ((void*)0);
    }
    if (ai->type & V_ASN1_NEG)
        BN_set_negative(ret, 1);
    return ret;
}
