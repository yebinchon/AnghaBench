
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* ip; struct TYPE_4__* email; struct TYPE_4__* peername; int hosts; int policies; } ;
typedef TYPE_1__ X509_VERIFY_PARAM ;


 int ASN1_OBJECT_free ;
 int OPENSSL_free (TYPE_1__*) ;
 int sk_ASN1_OBJECT_pop_free (int ,int ) ;
 int sk_OPENSSL_STRING_pop_free (int ,int ) ;
 int str_free ;

void X509_VERIFY_PARAM_free(X509_VERIFY_PARAM *param)
{
    if (param == ((void*)0))
        return;
    sk_ASN1_OBJECT_pop_free(param->policies, ASN1_OBJECT_free);
    sk_OPENSSL_STRING_pop_free(param->hosts, str_free);
    OPENSSL_free(param->peername);
    OPENSSL_free(param->email);
    OPENSSL_free(param->ip);
    OPENSSL_free(param);
}
