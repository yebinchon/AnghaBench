
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct crypto_available_options {scalar_t__ type_string; } ;
struct TYPE_4__ {int algorithm; } ;
typedef TYPE_1__ AlgorithmIdentifier ;


 int HX509_SELECT_ALL ;
 int HX509_SELECT_DIGEST ;
 int HX509_SELECT_PUBLIC_SIG ;
 int HX509_SELECT_SECRET_ENC ;
 int context ;
 int der_print_heim_oid (int *,char,char**) ;
 int errx (int,char*,...) ;
 int free (char*) ;
 int hx509_crypto_available (int ,int,int *,TYPE_1__**,unsigned int*) ;
 int hx509_crypto_free_algs (TYPE_1__*,unsigned int) ;
 int printf (char*,char*) ;
 scalar_t__ strcmp (scalar_t__,char*) ;

int
crypto_available(struct crypto_available_options *opt, int argc, char **argv)
{
    AlgorithmIdentifier *val;
    unsigned int len, i;
    int ret, type = HX509_SELECT_ALL;

    if (opt->type_string) {
 if (strcmp(opt->type_string, "all") == 0)
     type = HX509_SELECT_ALL;
 else if (strcmp(opt->type_string, "digest") == 0)
     type = HX509_SELECT_DIGEST;
 else if (strcmp(opt->type_string, "public-sig") == 0)
     type = HX509_SELECT_PUBLIC_SIG;
 else if (strcmp(opt->type_string, "secret") == 0)
     type = HX509_SELECT_SECRET_ENC;
 else
     errx(1, "unknown type: %s", opt->type_string);
    }

    ret = hx509_crypto_available(context, type, ((void*)0), &val, &len);
    if (ret)
 errx(1, "hx509_crypto_available");

    for (i = 0; i < len; i++) {
 char *s;
 der_print_heim_oid (&val[i].algorithm, '.', &s);
 printf("%s\n", s);
 free(s);
    }

    hx509_crypto_free_algs(val, len);

    return 0;
}
