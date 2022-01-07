
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_VERIFY_PARAM ;
typedef int X509_STORE ;
typedef int X509_LOOKUP ;


 int BIO_printf (int ,char*,...) ;
 int X509_FILETYPE_PEM ;
 int X509_LOOKUP_add_dir (int *,char const*,int ) ;
 int X509_LOOKUP_file () ;
 int X509_LOOKUP_hash_dir () ;
 int X509_LOOKUP_load_file (int *,char const*,int ) ;
 int * X509_STORE_add_lookup (int *,int ) ;
 int X509_STORE_free (int *) ;
 int * X509_STORE_new () ;
 int X509_STORE_set1_param (int *,int *) ;
 int X509_STORE_set_verify_cb (int *,int ) ;
 int bio_err ;
 int verify_cb ;

__attribute__((used)) static X509_STORE *create_cert_store(const char *CApath, const char *CAfile,
                                     X509_VERIFY_PARAM *vpm)
{
    X509_STORE *cert_ctx = ((void*)0);
    X509_LOOKUP *lookup = ((void*)0);
    int i;

    cert_ctx = X509_STORE_new();
    X509_STORE_set_verify_cb(cert_ctx, verify_cb);
    if (CApath != ((void*)0)) {
        lookup = X509_STORE_add_lookup(cert_ctx, X509_LOOKUP_hash_dir());
        if (lookup == ((void*)0)) {
            BIO_printf(bio_err, "memory allocation failure\n");
            goto err;
        }
        i = X509_LOOKUP_add_dir(lookup, CApath, X509_FILETYPE_PEM);
        if (!i) {
            BIO_printf(bio_err, "Error loading directory %s\n", CApath);
            goto err;
        }
    }

    if (CAfile != ((void*)0)) {
        lookup = X509_STORE_add_lookup(cert_ctx, X509_LOOKUP_file());
        if (lookup == ((void*)0)) {
            BIO_printf(bio_err, "memory allocation failure\n");
            goto err;
        }
        i = X509_LOOKUP_load_file(lookup, CAfile, X509_FILETYPE_PEM);
        if (!i) {
            BIO_printf(bio_err, "Error loading file %s\n", CAfile);
            goto err;
        }
    }

    if (vpm != ((void*)0))
        X509_STORE_set1_param(cert_ctx, vpm);

    return cert_ctx;

 err:
    X509_STORE_free(cert_ctx);
    return ((void*)0);
}
