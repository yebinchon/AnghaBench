
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ num_strings; } ;
struct crypto_select_options {TYPE_2__ peer_cmstype_strings; scalar_t__ type_string; } ;
typedef int * hx509_peer_info ;
struct TYPE_5__ {int algorithm; } ;
typedef TYPE_1__ AlgorithmIdentifier ;


 int HX509_SELECT_DIGEST ;
 int HX509_SELECT_PUBLIC_SIG ;
 int HX509_SELECT_SECRET_ENC ;
 int context ;
 int der_print_heim_oid (int *,char,char**) ;
 int errx (int,char*,...) ;
 int free (char*) ;
 int free_AlgorithmIdentifier (TYPE_1__*) ;
 int hx509_crypto_select (int ,int,int *,int *,TYPE_1__*) ;
 int hx509_peer_info_free (int *) ;
 int peer_strings (int ,int **,TYPE_2__*) ;
 int printf (char*,char*) ;
 scalar_t__ strcmp (scalar_t__,char*) ;

int
crypto_select(struct crypto_select_options *opt, int argc, char **argv)
{
    hx509_peer_info peer = ((void*)0);
    AlgorithmIdentifier selected;
    int ret, type = HX509_SELECT_DIGEST;
    char *s;

    if (opt->type_string) {
 if (strcmp(opt->type_string, "digest") == 0)
     type = HX509_SELECT_DIGEST;
 else if (strcmp(opt->type_string, "public-sig") == 0)
     type = HX509_SELECT_PUBLIC_SIG;
 else if (strcmp(opt->type_string, "secret") == 0)
     type = HX509_SELECT_SECRET_ENC;
 else
     errx(1, "unknown type: %s", opt->type_string);
    }

    if (opt->peer_cmstype_strings.num_strings)
 peer_strings(context, &peer, &opt->peer_cmstype_strings);

    ret = hx509_crypto_select(context, type, ((void*)0), peer, &selected);
    if (ret)
 errx(1, "hx509_crypto_available");

    der_print_heim_oid (&selected.algorithm, '.', &s);
    printf("%s\n", s);
    free(s);
    free_AlgorithmIdentifier(&selected);

    hx509_peer_info_free(peer);

    return 0;
}
