
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_CIPHER ;


 int BIO_printf (int ,char*,int ,char const*) ;
 int * EVP_get_cipherbyname (char const*) ;
 int bio_err ;
 int prog ;

int opt_cipher(const char *name, const EVP_CIPHER **cipherp)
{
    *cipherp = EVP_get_cipherbyname(name);
    if (*cipherp != ((void*)0))
        return 1;
    BIO_printf(bio_err, "%s: Unrecognized flag %s\n", prog, name);
    return 0;
}
