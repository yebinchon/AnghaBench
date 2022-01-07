
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ data; } ;
typedef int CONF ;
typedef TYPE_1__ BUF_MEM ;
typedef int ASN1_TYPE ;


 int ASN1_TYPE_free (int *) ;
 int * ASN1_generate_nconf (char*,int *) ;
 int BIO_printf (int ,char*,char const*) ;
 int BUF_MEM_grow (TYPE_1__*,int) ;
 int NCONF_free (int *) ;
 char* NCONF_get_string (int *,char*,char*) ;
 int * app_load_config (char const*) ;
 int bio_err ;
 int i2d_ASN1_TYPE (int *,unsigned char**) ;

__attribute__((used)) static int do_generate(char *genstr, const char *genconf, BUF_MEM *buf)
{
    CONF *cnf = ((void*)0);
    int len;
    unsigned char *p;
    ASN1_TYPE *atyp = ((void*)0);

    if (genconf != ((void*)0)) {
        if ((cnf = app_load_config(genconf)) == ((void*)0))
            goto err;
        if (genstr == ((void*)0))
            genstr = NCONF_get_string(cnf, "default", "asn1");
        if (genstr == ((void*)0)) {
            BIO_printf(bio_err, "Can't find 'asn1' in '%s'\n", genconf);
            goto err;
        }
    }

    atyp = ASN1_generate_nconf(genstr, cnf);
    NCONF_free(cnf);
    cnf = ((void*)0);

    if (atyp == ((void*)0))
        return -1;

    len = i2d_ASN1_TYPE(atyp, ((void*)0));

    if (len <= 0)
        goto err;

    if (!BUF_MEM_grow(buf, len))
        goto err;

    p = (unsigned char *)buf->data;

    i2d_ASN1_TYPE(atyp, &p);

    ASN1_TYPE_free(atyp);
    return len;

 err:
    NCONF_free(cnf);
    ASN1_TYPE_free(atyp);
    return -1;
}
