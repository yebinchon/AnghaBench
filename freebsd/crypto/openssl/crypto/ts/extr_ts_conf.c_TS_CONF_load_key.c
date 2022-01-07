
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY ;
typedef int BIO ;


 int BIO_free (int *) ;
 int * BIO_new_file (char const*,char*) ;
 int * PEM_read_bio_PrivateKey (int *,int *,int *,char*) ;
 int TS_F_TS_CONF_LOAD_KEY ;
 int TS_R_CANNOT_LOAD_KEY ;
 int TSerr (int ,int ) ;

EVP_PKEY *TS_CONF_load_key(const char *file, const char *pass)
{
    BIO *key = ((void*)0);
    EVP_PKEY *pkey = ((void*)0);

    if ((key = BIO_new_file(file, "r")) == ((void*)0))
        goto end;
    pkey = PEM_read_bio_PrivateKey(key, ((void*)0), ((void*)0), (char *)pass);
 end:
    if (pkey == ((void*)0))
        TSerr(TS_F_TS_CONF_LOAD_KEY, TS_R_CANNOT_LOAD_KEY);
    BIO_free(key);
    return pkey;
}
