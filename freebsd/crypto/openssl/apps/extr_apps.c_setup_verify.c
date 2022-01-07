
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X509_STORE ;
typedef int X509_LOOKUP ;


 int BIO_printf (int ,char*,char const*) ;
 int ERR_clear_error () ;
 int X509_FILETYPE_DEFAULT ;
 int X509_FILETYPE_PEM ;
 int X509_LOOKUP_add_dir (int *,char const*,int ) ;
 int X509_LOOKUP_file () ;
 int X509_LOOKUP_hash_dir () ;
 int X509_LOOKUP_load_file (int *,char const*,int ) ;
 int * X509_STORE_add_lookup (int *,int ) ;
 int X509_STORE_free (int *) ;
 int * X509_STORE_new () ;
 int bio_err ;

X509_STORE *setup_verify(const char *CAfile, const char *CApath, int noCAfile, int noCApath)
{
    X509_STORE *store = X509_STORE_new();
    X509_LOOKUP *lookup;

    if (store == ((void*)0))
        goto end;

    if (CAfile != ((void*)0) || !noCAfile) {
        lookup = X509_STORE_add_lookup(store, X509_LOOKUP_file());
        if (lookup == ((void*)0))
            goto end;
        if (CAfile) {
            if (!X509_LOOKUP_load_file(lookup, CAfile, X509_FILETYPE_PEM)) {
                BIO_printf(bio_err, "Error loading file %s\n", CAfile);
                goto end;
            }
        } else {
            X509_LOOKUP_load_file(lookup, ((void*)0), X509_FILETYPE_DEFAULT);
        }
    }

    if (CApath != ((void*)0) || !noCApath) {
        lookup = X509_STORE_add_lookup(store, X509_LOOKUP_hash_dir());
        if (lookup == ((void*)0))
            goto end;
        if (CApath) {
            if (!X509_LOOKUP_add_dir(lookup, CApath, X509_FILETYPE_PEM)) {
                BIO_printf(bio_err, "Error loading directory %s\n", CApath);
                goto end;
            }
        } else {
            X509_LOOKUP_add_dir(lookup, ((void*)0), X509_FILETYPE_DEFAULT);
        }
    }

    ERR_clear_error();
    return store;
 end:
    X509_STORE_free(store);
    return ((void*)0);
}
