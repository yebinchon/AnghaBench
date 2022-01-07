
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct hx509cipher {int (* evp_func ) () ;} ;
typedef TYPE_1__* hx509_crypto ;
typedef int hx509_context ;
typedef int heim_oid ;
struct TYPE_5__ {int oid; int c; struct hx509cipher const* cipher; int flags; } ;


 int ENOMEM ;
 int HX509_ALG_NOT_SUPP ;
 int PADDING_PKCS7 ;
 TYPE_1__* calloc (int,int) ;
 scalar_t__ der_copy_oid (int const*,int *) ;
 struct hx509cipher* find_cipher_by_oid (int const*) ;
 int hx509_clear_error_string (int ) ;
 int hx509_crypto_destroy (TYPE_1__*) ;
 int hx509_set_error_string (int ,int ,int,char*) ;
 int stub1 () ;

int
hx509_crypto_init(hx509_context context,
    const char *provider,
    const heim_oid *enctype,
    hx509_crypto *crypto)
{
    const struct hx509cipher *cipher;

    *crypto = ((void*)0);

    cipher = find_cipher_by_oid(enctype);
    if (cipher == ((void*)0)) {
 hx509_set_error_string(context, 0, HX509_ALG_NOT_SUPP,
          "Algorithm not supported");
 return HX509_ALG_NOT_SUPP;
    }

    *crypto = calloc(1, sizeof(**crypto));
    if (*crypto == ((void*)0)) {
 hx509_clear_error_string(context);
 return ENOMEM;
    }

    (*crypto)->flags = PADDING_PKCS7;
    (*crypto)->cipher = cipher;
    (*crypto)->c = (*cipher->evp_func)();

    if (der_copy_oid(enctype, &(*crypto)->oid)) {
 hx509_crypto_destroy(*crypto);
 *crypto = ((void*)0);
 hx509_clear_error_string(context);
 return ENOMEM;
    }

    return 0;
}
