
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int pem_password_cb ;
struct TYPE_5__ {char const* password; char const* prompt_info; } ;
typedef int RSA ;
typedef TYPE_1__ PW_CB_DATA ;
typedef int EVP_PKEY ;
typedef int ENGINE ;
typedef int BIO ;


 int BIO_free (int *) ;
 int BIO_printf (int ,char*,...) ;
 int * ENGINE_load_public_key (int *,char const*,int ,TYPE_1__*) ;
 int ERR_print_errors (int ) ;
 int * EVP_PKEY_new () ;
 int EVP_PKEY_set1_RSA (int *,int *) ;
 int FORMAT_ASN1 ;
 int FORMAT_ASN1RSA ;
 int FORMAT_ENGINE ;
 int FORMAT_MSBLOB ;
 int FORMAT_PEM ;
 int FORMAT_PEMRSA ;
 int * PEM_read_bio_PUBKEY (int *,int *,int *,TYPE_1__*) ;
 int * PEM_read_bio_RSAPublicKey (int *,int *,int *,TYPE_1__*) ;
 int RSA_free (int *) ;
 int * b2i_PublicKey_bio (int *) ;
 int bio_err ;
 int * bio_open_default (char const*,char,int) ;
 int * d2i_PUBKEY_bio (int *,int *) ;
 int * d2i_RSAPublicKey_bio (int *,int *) ;
 int * dup_bio_in (int) ;
 scalar_t__ password_callback ;
 int stdin ;
 int ui_method ;
 int unbuffer (int ) ;

EVP_PKEY *load_pubkey(const char *file, int format, int maybe_stdin,
                      const char *pass, ENGINE *e, const char *key_descrip)
{
    BIO *key = ((void*)0);
    EVP_PKEY *pkey = ((void*)0);
    PW_CB_DATA cb_data;

    cb_data.password = pass;
    cb_data.prompt_info = file;

    if (file == ((void*)0) && (!maybe_stdin || format == FORMAT_ENGINE)) {
        BIO_printf(bio_err, "no keyfile specified\n");
        goto end;
    }
    if (format == FORMAT_ENGINE) {
        if (e == ((void*)0)) {
            BIO_printf(bio_err, "no engine specified\n");
        } else {

            pkey = ENGINE_load_public_key(e, file, ui_method, &cb_data);
            if (pkey == ((void*)0)) {
                BIO_printf(bio_err, "cannot load %s from engine\n", key_descrip);
                ERR_print_errors(bio_err);
            }



        }
        goto end;
    }
    if (file == ((void*)0) && maybe_stdin) {
        unbuffer(stdin);
        key = dup_bio_in(format);
    } else {
        key = bio_open_default(file, 'r', format);
    }
    if (key == ((void*)0))
        goto end;
    if (format == FORMAT_ASN1) {
        pkey = d2i_PUBKEY_bio(key, ((void*)0));
    } else if (format == FORMAT_ASN1RSA) {

        RSA *rsa;
        rsa = d2i_RSAPublicKey_bio(key, ((void*)0));
        if (rsa) {
            pkey = EVP_PKEY_new();
            if (pkey != ((void*)0))
                EVP_PKEY_set1_RSA(pkey, rsa);
            RSA_free(rsa);
        } else



            pkey = ((void*)0);
    } else if (format == FORMAT_PEMRSA) {

        RSA *rsa;
        rsa = PEM_read_bio_RSAPublicKey(key, ((void*)0),
                                        (pem_password_cb *)password_callback,
                                        &cb_data);
        if (rsa != ((void*)0)) {
            pkey = EVP_PKEY_new();
            if (pkey != ((void*)0))
                EVP_PKEY_set1_RSA(pkey, rsa);
            RSA_free(rsa);
        } else



            pkey = ((void*)0);
    } else if (format == FORMAT_PEM) {
        pkey = PEM_read_bio_PUBKEY(key, ((void*)0),
                                   (pem_password_cb *)password_callback,
                                   &cb_data);

    } else if (format == FORMAT_MSBLOB) {
        pkey = b2i_PublicKey_bio(key);

    }
 end:
    BIO_free(key);
    if (pkey == ((void*)0))
        BIO_printf(bio_err, "unable to load %s\n", key_descrip);
    return pkey;
}
