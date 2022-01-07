
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_principal ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef int krb5_ccache ;
typedef int krb5_cc_ops ;


 scalar_t__ FALSE ;
 scalar_t__ KRB5_CC_NOSUPP ;
 int krb5_cc_destroy (int ,int ) ;
 int * krb5_cc_get_prefix_ops (int ,char const*) ;
 scalar_t__ krb5_cc_get_principal (int ,int ,int *) ;
 scalar_t__ krb5_cc_initialize (int ,int ,int ) ;
 scalar_t__ krb5_cc_new_unique (int ,char const*,int *,int *) ;
 int krb5_err (int ,int,scalar_t__,char*,...) ;
 int krb5_errx (int ,int,char*) ;
 int krb5_free_principal (int ,int ) ;
 scalar_t__ krb5_parse_name (int ,char*,int *) ;
 scalar_t__ krb5_principal_compare (int ,int ,int ) ;

__attribute__((used)) static void
test_move(krb5_context context, const char *type)
{
    const krb5_cc_ops *ops;
    krb5_ccache fromid, toid;
    krb5_error_code ret;
    krb5_principal p, p2;

    ops = krb5_cc_get_prefix_ops(context, type);
    if (ops == ((void*)0))
 return;

    ret = krb5_cc_new_unique(context, type, ((void*)0), &fromid);
    if (ret == KRB5_CC_NOSUPP)
 return;
    else if (ret)
 krb5_err(context, 1, ret, "krb5_cc_new_unique: %s", type);

    ret = krb5_parse_name(context, "lha@SU.SE", &p);
    if (ret)
 krb5_err(context, 1, ret, "krb5_parse_name");

    ret = krb5_cc_initialize(context, fromid, p);
    if (ret)
 krb5_err(context, 1, ret, "krb5_cc_initialize");

    ret = krb5_cc_new_unique(context, type, ((void*)0), &toid);
    if (ret)
 krb5_err(context, 1, ret, "krb5_cc_new_unique");

    ret = krb5_cc_initialize(context, toid, p);
    if (ret)
 krb5_err(context, 1, ret, "krb5_cc_initialize");

    ret = krb5_cc_get_principal(context, toid, &p2);
    if (ret)
 krb5_err(context, 1, ret, "krb5_cc_get_principal");

    if (krb5_principal_compare(context, p, p2) == FALSE)
 krb5_errx(context, 1, "p != p2");

    krb5_free_principal(context, p);
    krb5_free_principal(context, p2);

    krb5_cc_destroy(context, toid);
    krb5_cc_destroy(context, fromid);
}
