
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL_CTX ;


 int BIO_printf (int ,char*,...) ;
 int ERR_print_errors (int ) ;
 int SSL_CTX_check_private_key (int *) ;
 scalar_t__ SSL_CTX_use_PrivateKey_file (int *,char*,int ) ;
 scalar_t__ SSL_CTX_use_certificate_file (int *,char*,int ) ;
 int SSL_FILETYPE_PEM ;
 int bio_err ;

int set_cert_stuff(SSL_CTX *ctx, char *cert_file, char *key_file)
{
    if (cert_file != ((void*)0)) {
        if (SSL_CTX_use_certificate_file(ctx, cert_file,
                                         SSL_FILETYPE_PEM) <= 0) {
            BIO_printf(bio_err, "unable to get certificate from '%s'\n",
                       cert_file);
            ERR_print_errors(bio_err);
            return 0;
        }
        if (key_file == ((void*)0))
            key_file = cert_file;
        if (SSL_CTX_use_PrivateKey_file(ctx, key_file, SSL_FILETYPE_PEM) <= 0) {
            BIO_printf(bio_err, "unable to get private key from '%s'\n",
                       key_file);
            ERR_print_errors(bio_err);
            return 0;
        }
        if (!SSL_CTX_check_private_key(ctx)) {
            BIO_printf(bio_err,
                       "Private key does not match the certificate public key\n");
            return 0;
        }
    }
    return 1;
}
