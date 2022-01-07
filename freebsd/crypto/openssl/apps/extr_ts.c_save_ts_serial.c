
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;
typedef int ASN1_INTEGER ;


 int BIO_free_all (int *) ;
 int * BIO_new_file (char const*,char*) ;
 int BIO_printf (int ,char*,char const*) ;
 scalar_t__ BIO_puts (int *,char*) ;
 int bio_err ;
 scalar_t__ i2a_ASN1_INTEGER (int *,int *) ;

__attribute__((used)) static int save_ts_serial(const char *serialfile, ASN1_INTEGER *serial)
{
    int ret = 0;
    BIO *out = ((void*)0);

    if ((out = BIO_new_file(serialfile, "w")) == ((void*)0))
        goto err;
    if (i2a_ASN1_INTEGER(out, serial) <= 0)
        goto err;
    if (BIO_puts(out, "\n") <= 0)
        goto err;
    ret = 1;
 err:
    if (!ret)
        BIO_printf(bio_err, "could not save serial number to %s\n",
                   serialfile);
    BIO_free_all(out);
    return ret;
}
