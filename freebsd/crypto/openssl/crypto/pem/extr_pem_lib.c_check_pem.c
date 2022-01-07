
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ param_decode; scalar_t__ old_priv_decode; } ;
typedef TYPE_1__ EVP_PKEY_ASN1_METHOD ;
typedef int ENGINE ;


 int ENGINE_finish (int *) ;
 TYPE_1__* EVP_PKEY_asn1_find_str (int **,char const*,int) ;
 char const* PEM_STRING_CMS ;
 char const* PEM_STRING_DHPARAMS ;
 char const* PEM_STRING_DHXPARAMS ;
 char const* PEM_STRING_EVP_PKEY ;
 char const* PEM_STRING_PARAMETERS ;
 char const* PEM_STRING_PKCS7 ;
 char const* PEM_STRING_PKCS7_SIGNED ;
 char const* PEM_STRING_PKCS8 ;
 char const* PEM_STRING_PKCS8INF ;
 char const* PEM_STRING_X509 ;
 char const* PEM_STRING_X509_OLD ;
 char const* PEM_STRING_X509_REQ ;
 char const* PEM_STRING_X509_REQ_OLD ;
 char const* PEM_STRING_X509_TRUSTED ;
 int pem_check_suffix (char const*,char*) ;
 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static int check_pem(const char *nm, const char *name)
{

    if (strcmp(nm, name) == 0)
        return 1;



    if (strcmp(name, PEM_STRING_EVP_PKEY) == 0) {
        int slen;
        const EVP_PKEY_ASN1_METHOD *ameth;
        if (strcmp(nm, PEM_STRING_PKCS8) == 0)
            return 1;
        if (strcmp(nm, PEM_STRING_PKCS8INF) == 0)
            return 1;
        slen = pem_check_suffix(nm, "PRIVATE KEY");
        if (slen > 0) {




            ameth = EVP_PKEY_asn1_find_str(((void*)0), nm, slen);
            if (ameth && ameth->old_priv_decode)
                return 1;
        }
        return 0;
    }

    if (strcmp(name, PEM_STRING_PARAMETERS) == 0) {
        int slen;
        const EVP_PKEY_ASN1_METHOD *ameth;
        slen = pem_check_suffix(nm, "PARAMETERS");
        if (slen > 0) {
            ENGINE *e;
            ameth = EVP_PKEY_asn1_find_str(&e, nm, slen);
            if (ameth) {
                int r;
                if (ameth->param_decode)
                    r = 1;
                else
                    r = 0;

                ENGINE_finish(e);

                return r;
            }
        }
        return 0;
    }

    if (strcmp(nm, PEM_STRING_DHXPARAMS) == 0
        && strcmp(name, PEM_STRING_DHPARAMS) == 0)
        return 1;



    if (strcmp(nm, PEM_STRING_X509_OLD) == 0
        && strcmp(name, PEM_STRING_X509) == 0)
        return 1;

    if (strcmp(nm, PEM_STRING_X509_REQ_OLD) == 0
        && strcmp(name, PEM_STRING_X509_REQ) == 0)
        return 1;


    if (strcmp(nm, PEM_STRING_X509) == 0
        && strcmp(name, PEM_STRING_X509_TRUSTED) == 0)
        return 1;

    if (strcmp(nm, PEM_STRING_X509_OLD) == 0
        && strcmp(name, PEM_STRING_X509_TRUSTED) == 0)
        return 1;


    if (strcmp(nm, PEM_STRING_X509) == 0
        && strcmp(name, PEM_STRING_PKCS7) == 0)
        return 1;

    if (strcmp(nm, PEM_STRING_PKCS7_SIGNED) == 0
        && strcmp(name, PEM_STRING_PKCS7) == 0)
        return 1;


    if (strcmp(nm, PEM_STRING_X509) == 0
        && strcmp(name, PEM_STRING_CMS) == 0)
        return 1;

    if (strcmp(nm, PEM_STRING_PKCS7) == 0
        && strcmp(name, PEM_STRING_CMS) == 0)
        return 1;


    return 0;
}
