
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct query_options {scalar_t__ print_flag; int expr_string; scalar_t__ digitalSignature_flag; scalar_t__ keyEncipherment_flag; scalar_t__ private_key_flag; scalar_t__ eku_string; int friendlyname_string; int pass_strings; } ;
typedef int hx509_query ;
typedef int hx509_lock ;
typedef int hx509_certs ;
typedef int hx509_cert ;
typedef int heim_oid ;


 int HX509_QUERY_OPTION_KU_DIGITALSIGNATURE ;
 int HX509_QUERY_OPTION_KU_ENCIPHERMENT ;
 int HX509_QUERY_OPTION_PRIVATE_KEY ;
 int context ;
 int der_free_oid (int *) ;
 int errx (int,char*,...) ;
 int hx509_cert_free (int ) ;
 int hx509_certs_append (int ,int ,int ,char*) ;
 int hx509_certs_find (int ,int ,int *,int *) ;
 int hx509_certs_free (int *) ;
 int hx509_certs_init (int ,char*,int ,int *,int *) ;
 int hx509_err (int ,int,int,char*) ;
 int hx509_lock_free (int ) ;
 int hx509_lock_init (int ,int *) ;
 int hx509_query_alloc (int ,int **) ;
 int hx509_query_free (int ,int *) ;
 int hx509_query_match_eku (int *,int *) ;
 int hx509_query_match_expr (int ,int *,int ) ;
 int hx509_query_match_friendly_name (int *,int ) ;
 int hx509_query_match_option (int *,int ) ;
 int lock_strings (int ,int *) ;
 int parse_oid (scalar_t__,int *,int *) ;
 int print_certificate (int ,int ,int ) ;
 int printf (char*,...) ;

int
query(struct query_options *opt, int argc, char **argv)
{
    hx509_lock lock;
    hx509_query *q;
    hx509_certs certs;
    hx509_cert c;
    int ret;

    ret = hx509_query_alloc(context, &q);
    if (ret)
 errx(1, "hx509_query_alloc: %d", ret);

    hx509_lock_init(context, &lock);
    lock_strings(lock, &opt->pass_strings);

    ret = hx509_certs_init(context, "MEMORY:cert-store", 0, ((void*)0), &certs);
    if (ret) hx509_err(context, 1, ret, "hx509_certs_init: MEMORY");

    while (argc > 0) {

 ret = hx509_certs_append(context, certs, lock, argv[0]);
 if (ret)
     errx(1, "hx509_certs_append: %s: %d", argv[0], ret);

 argc--;
 argv++;
    }

    if (opt->friendlyname_string)
 hx509_query_match_friendly_name(q, opt->friendlyname_string);

    if (opt->eku_string) {
 heim_oid oid;

 parse_oid(opt->eku_string, ((void*)0), &oid);

 ret = hx509_query_match_eku(q, &oid);
 if (ret)
     errx(1, "hx509_query_match_eku: %d", ret);
 der_free_oid(&oid);
    }

    if (opt->private_key_flag)
 hx509_query_match_option(q, HX509_QUERY_OPTION_PRIVATE_KEY);

    if (opt->keyEncipherment_flag)
 hx509_query_match_option(q, HX509_QUERY_OPTION_KU_ENCIPHERMENT);

    if (opt->digitalSignature_flag)
 hx509_query_match_option(q, HX509_QUERY_OPTION_KU_DIGITALSIGNATURE);

    if (opt->expr_string)
 hx509_query_match_expr(context, q, opt->expr_string);

    ret = hx509_certs_find(context, certs, q, &c);
    hx509_query_free(context, q);
    if (ret)
 printf("no match found (%d)\n", ret);
    else {
 printf("match found\n");
 if (opt->print_flag)
     print_certificate(context, c, 0);
    }

    hx509_cert_free(c);
    hx509_certs_free(&certs);

    hx509_lock_free(lock);

    return ret;
}
