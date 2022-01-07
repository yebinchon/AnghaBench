
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct doall_enc_ciphers {int n; int bio; } ;
struct TYPE_3__ {scalar_t__* name; } ;
typedef TYPE_1__ OBJ_NAME ;
typedef int EVP_CIPHER ;


 int BIO_printf (int ,char*,...) ;
 int EVP_CIPHER_flags (int const*) ;
 scalar_t__ EVP_CIPHER_mode (int const*) ;
 int EVP_CIPH_FLAG_AEAD_CIPHER ;
 scalar_t__ EVP_CIPH_XTS_MODE ;
 int * EVP_get_cipherbyname (scalar_t__*) ;
 int islower (unsigned char) ;

__attribute__((used)) static void show_ciphers(const OBJ_NAME *name, void *arg)
{
    struct doall_enc_ciphers *dec = (struct doall_enc_ciphers *)arg;
    const EVP_CIPHER *cipher;

    if (!islower((unsigned char)*name->name))
        return;


    cipher = EVP_get_cipherbyname(name->name);
    if (cipher == ((void*)0) ||
            (EVP_CIPHER_flags(cipher) & EVP_CIPH_FLAG_AEAD_CIPHER) != 0 ||
            EVP_CIPHER_mode(cipher) == EVP_CIPH_XTS_MODE)
        return;

    BIO_printf(dec->bio, "-%-25s", name->name);
    if (++dec->n == 3) {
        BIO_printf(dec->bio, "\n");
        dec->n = 0;
    } else
        BIO_printf(dec->bio, " ");
}
