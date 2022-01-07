
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int depth; int auth_level; int trust; } ;
typedef TYPE_1__ X509_VERIFY_PARAM ;


 int ERR_R_MALLOC_FAILURE ;
 TYPE_1__* OPENSSL_zalloc (int) ;
 int X509_F_X509_VERIFY_PARAM_NEW ;
 int X509_TRUST_DEFAULT ;
 int X509err (int ,int ) ;

X509_VERIFY_PARAM *X509_VERIFY_PARAM_new(void)
{
    X509_VERIFY_PARAM *param;

    param = OPENSSL_zalloc(sizeof(*param));
    if (param == ((void*)0)) {
        X509err(X509_F_X509_VERIFY_PARAM_NEW, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }
    param->trust = X509_TRUST_DEFAULT;

    param->depth = -1;
    param->auth_level = -1;
    return param;
}
