
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pkey_flags; int pkey_id; int * pem_str; int member_0; } ;
typedef TYPE_1__ EVP_PKEY_ASN1_METHOD ;


 int ASN1_PKEY_ALIAS ;
 int ERR_R_PASSED_INVALID_ARGUMENT ;
 int EVP_F_EVP_PKEY_ASN1_ADD0 ;
 int EVP_R_PKEY_APPLICATION_ASN1_METHOD_ALREADY_REGISTERED ;
 int EVPerr (int ,int ) ;
 int ameth_cmp ;
 int * app_methods ;
 scalar_t__ sk_EVP_PKEY_ASN1_METHOD_find (int *,TYPE_1__*) ;
 int * sk_EVP_PKEY_ASN1_METHOD_new (int ) ;
 int sk_EVP_PKEY_ASN1_METHOD_push (int *,TYPE_1__ const*) ;
 int sk_EVP_PKEY_ASN1_METHOD_sort (int *) ;

int EVP_PKEY_asn1_add0(const EVP_PKEY_ASN1_METHOD *ameth)
{
    EVP_PKEY_ASN1_METHOD tmp = { 0, };
    if (!((ameth->pem_str == ((void*)0)
           && (ameth->pkey_flags & ASN1_PKEY_ALIAS) != 0)
          || (ameth->pem_str != ((void*)0)
              && (ameth->pkey_flags & ASN1_PKEY_ALIAS) == 0))) {
        EVPerr(EVP_F_EVP_PKEY_ASN1_ADD0, ERR_R_PASSED_INVALID_ARGUMENT);
        return 0;
    }

    if (app_methods == ((void*)0)) {
        app_methods = sk_EVP_PKEY_ASN1_METHOD_new(ameth_cmp);
        if (app_methods == ((void*)0))
            return 0;
    }

    tmp.pkey_id = ameth->pkey_id;
    if (sk_EVP_PKEY_ASN1_METHOD_find(app_methods, &tmp) >= 0) {
        EVPerr(EVP_F_EVP_PKEY_ASN1_ADD0,
               EVP_R_PKEY_APPLICATION_ASN1_METHOD_ALREADY_REGISTERED);
        return 0;
    }

    if (!sk_EVP_PKEY_ASN1_METHOD_push(app_methods, ameth))
        return 0;
    sk_EVP_PKEY_ASN1_METHOD_sort(app_methods);
    return 1;
}
