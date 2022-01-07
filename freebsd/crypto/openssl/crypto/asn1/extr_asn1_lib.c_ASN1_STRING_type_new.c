
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int type; } ;
typedef TYPE_1__ ASN1_STRING ;


 int ASN1_F_ASN1_STRING_TYPE_NEW ;
 int ASN1err (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 TYPE_1__* OPENSSL_zalloc (int) ;

ASN1_STRING *ASN1_STRING_type_new(int type)
{
    ASN1_STRING *ret;

    ret = OPENSSL_zalloc(sizeof(*ret));
    if (ret == ((void*)0)) {
        ASN1err(ASN1_F_ASN1_STRING_TYPE_NEW, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }
    ret->type = type;
    return ret;
}
