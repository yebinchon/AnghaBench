
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_principal ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef int krb5_ccache ;


 scalar_t__ asprintf (char**,char*,int ,int ) ;
 int errx (int,char*) ;
 int free (char*) ;
 int krb5_cc_destroy (int ,int ) ;
 int krb5_cc_get_name (int ,int ) ;
 scalar_t__ krb5_cc_get_principal (int ,int ,int *) ;
 int krb5_cc_get_type (int ,int ) ;
 scalar_t__ krb5_cc_initialize (int ,int ,int ) ;
 scalar_t__ krb5_cc_new_unique (int ,char const*,int *,int *) ;
 scalar_t__ krb5_cc_resolve (int ,char*,int *) ;
 int krb5_err (int ,int,scalar_t__,char*,...) ;
 int krb5_free_principal (int ,int ) ;
 scalar_t__ krb5_parse_name (int ,char*,int *) ;

__attribute__((used)) static void
test_init_vs_destroy(krb5_context context, const char *type)
{
    krb5_error_code ret;
    krb5_ccache id, id2;
    krb5_principal p, p2;
    char *n = ((void*)0);

    ret = krb5_parse_name(context, "lha@SU.SE", &p);
    if (ret)
 krb5_err(context, 1, ret, "krb5_parse_name");

    ret = krb5_cc_new_unique(context, type, ((void*)0), &id);
    if (ret)
 krb5_err(context, 1, ret, "krb5_cc_new_unique: %s", type);

    if (asprintf(&n, "%s:%s",
   krb5_cc_get_type(context, id),
   krb5_cc_get_name(context, id)) < 0 || n == ((void*)0))
 errx(1, "malloc");


    ret = krb5_cc_resolve(context, n, &id2);
    free(n);
    if (ret)
 krb5_err(context, 1, ret, "krb5_cc_resolve");

    krb5_cc_destroy(context, id);

    ret = krb5_cc_initialize(context, id2, p);
    if (ret)
 krb5_err(context, 1, ret, "krb5_cc_initialize");

    ret = krb5_cc_get_principal(context, id2, &p2);
    if (ret)
 krb5_err(context, 1, ret, "krb5_cc_get_principal");

    krb5_cc_destroy(context, id2);
    krb5_free_principal(context, p);
    krb5_free_principal(context, p2);
}
