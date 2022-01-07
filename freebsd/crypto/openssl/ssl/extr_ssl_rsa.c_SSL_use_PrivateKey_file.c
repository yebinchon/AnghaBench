
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int default_passwd_callback_userdata; int default_passwd_callback; } ;
typedef TYPE_1__ SSL ;
typedef int EVP_PKEY ;
typedef int BIO ;


 int BIO_free (int *) ;
 int * BIO_new (int ) ;
 scalar_t__ BIO_read_filename (int *,char const*) ;
 int BIO_s_file () ;
 int ERR_R_ASN1_LIB ;
 int ERR_R_BUF_LIB ;
 int ERR_R_PEM_LIB ;
 int ERR_R_SYS_LIB ;
 int EVP_PKEY_free (int *) ;
 int * PEM_read_bio_PrivateKey (int *,int *,int ,int ) ;
 int SSL_FILETYPE_ASN1 ;
 int SSL_FILETYPE_PEM ;
 int SSL_F_SSL_USE_PRIVATEKEY_FILE ;
 int SSL_R_BAD_SSL_FILETYPE ;
 int SSL_use_PrivateKey (TYPE_1__*,int *) ;
 int SSLerr (int ,int) ;
 int * d2i_PrivateKey_bio (int *,int *) ;

int SSL_use_PrivateKey_file(SSL *ssl, const char *file, int type)
{
    int j, ret = 0;
    BIO *in;
    EVP_PKEY *pkey = ((void*)0);

    in = BIO_new(BIO_s_file());
    if (in == ((void*)0)) {
        SSLerr(SSL_F_SSL_USE_PRIVATEKEY_FILE, ERR_R_BUF_LIB);
        goto end;
    }

    if (BIO_read_filename(in, file) <= 0) {
        SSLerr(SSL_F_SSL_USE_PRIVATEKEY_FILE, ERR_R_SYS_LIB);
        goto end;
    }
    if (type == SSL_FILETYPE_PEM) {
        j = ERR_R_PEM_LIB;
        pkey = PEM_read_bio_PrivateKey(in, ((void*)0),
                                       ssl->default_passwd_callback,
                                       ssl->default_passwd_callback_userdata);
    } else if (type == SSL_FILETYPE_ASN1) {
        j = ERR_R_ASN1_LIB;
        pkey = d2i_PrivateKey_bio(in, ((void*)0));
    } else {
        SSLerr(SSL_F_SSL_USE_PRIVATEKEY_FILE, SSL_R_BAD_SSL_FILETYPE);
        goto end;
    }
    if (pkey == ((void*)0)) {
        SSLerr(SSL_F_SSL_USE_PRIVATEKEY_FILE, j);
        goto end;
    }
    ret = SSL_use_PrivateKey(ssl, pkey);
    EVP_PKEY_free(pkey);
 end:
    BIO_free(in);
    return ret;
}
