
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY_CTX ;
typedef int EVP_PKEY_ASN1_METHOD ;
typedef int ENGINE ;


 int BIO_printf (int ,char*,char const*) ;
 int BIO_puts (int ,char*) ;
 int ENGINE_finish (int *) ;
 int * ENGINE_get_pkey_asn1_meth_str (int *,char const*,int) ;
 int ERR_clear_error () ;
 int ERR_print_errors (int ) ;
 int EVP_PKEY_CTX_free (int *) ;
 int * EVP_PKEY_CTX_new_id (int,int *) ;
 int * EVP_PKEY_asn1_find_str (int **,char const*,int) ;
 int EVP_PKEY_asn1_get0_info (int*,int *,int *,int *,int *,int const*) ;
 scalar_t__ EVP_PKEY_keygen_init (int *) ;
 scalar_t__ EVP_PKEY_paramgen_init (int *) ;
 int bio_err ;

int init_gen_str(EVP_PKEY_CTX **pctx,
                 const char *algname, ENGINE *e, int do_param)
{
    EVP_PKEY_CTX *ctx = ((void*)0);
    const EVP_PKEY_ASN1_METHOD *ameth;
    ENGINE *tmpeng = ((void*)0);
    int pkey_id;

    if (*pctx) {
        BIO_puts(bio_err, "Algorithm already set!\n");
        return 0;
    }

    ameth = EVP_PKEY_asn1_find_str(&tmpeng, algname, -1);


    if (!ameth && e)
        ameth = ENGINE_get_pkey_asn1_meth_str(e, algname, -1);


    if (!ameth) {
        BIO_printf(bio_err, "Algorithm %s not found\n", algname);
        return 0;
    }

    ERR_clear_error();

    EVP_PKEY_asn1_get0_info(&pkey_id, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ameth);

    ENGINE_finish(tmpeng);

    ctx = EVP_PKEY_CTX_new_id(pkey_id, e);

    if (!ctx)
        goto err;
    if (do_param) {
        if (EVP_PKEY_paramgen_init(ctx) <= 0)
            goto err;
    } else {
        if (EVP_PKEY_keygen_init(ctx) <= 0)
            goto err;
    }

    *pctx = ctx;
    return 1;

 err:
    BIO_printf(bio_err, "Error initializing %s context\n", algname);
    ERR_print_errors(bio_err);
    EVP_PKEY_CTX_free(ctx);
    return 0;

}
