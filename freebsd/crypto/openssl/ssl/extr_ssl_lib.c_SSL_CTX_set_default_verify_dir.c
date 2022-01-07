
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X509_LOOKUP ;
struct TYPE_3__ {int cert_store; } ;
typedef TYPE_1__ SSL_CTX ;


 int ERR_clear_error () ;
 int X509_FILETYPE_DEFAULT ;
 int X509_LOOKUP_add_dir (int *,int *,int ) ;
 int X509_LOOKUP_hash_dir () ;
 int * X509_STORE_add_lookup (int ,int ) ;

int SSL_CTX_set_default_verify_dir(SSL_CTX *ctx)
{
    X509_LOOKUP *lookup;

    lookup = X509_STORE_add_lookup(ctx->cert_store, X509_LOOKUP_hash_dir());
    if (lookup == ((void*)0))
        return 0;
    X509_LOOKUP_add_dir(lookup, ((void*)0), X509_FILETYPE_DEFAULT);


    ERR_clear_error();

    return 1;
}
