
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int krb5_principal ;
typedef scalar_t__ krb5_error_code ;
struct TYPE_5__ {int client; int server; } ;
typedef TYPE_1__ krb5_creds ;
typedef int krb5_context ;
typedef int krb5_ccache ;
typedef int cred ;


 scalar_t__ krb5_cc_destroy (int ,int ) ;
 scalar_t__ krb5_cc_initialize (int ,int ,int ) ;
 scalar_t__ krb5_cc_new_unique (int ,char const*,int *,int *) ;
 scalar_t__ krb5_cc_remove_cred (int ,int ,int ,TYPE_1__*) ;
 scalar_t__ krb5_cc_store_cred (int ,int ,TYPE_1__*) ;
 int krb5_err (int ,int,scalar_t__,char*,...) ;
 int krb5_free_principal (int ,int ) ;
 scalar_t__ krb5_parse_name (int ,char*,int *) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void
test_cache_remove(krb5_context context, const char *type)
{
    krb5_error_code ret;
    krb5_ccache id;
    krb5_principal p;
    krb5_creds cred;

    ret = krb5_parse_name(context, "lha@SU.SE", &p);
    if (ret)
 krb5_err(context, 1, ret, "krb5_parse_name");

    ret = krb5_cc_new_unique(context, type, ((void*)0), &id);
    if (ret)
 krb5_err(context, 1, ret, "krb5_cc_gen_new: %s", type);

    ret = krb5_cc_initialize(context, id, p);
    if (ret)
 krb5_err(context, 1, ret, "krb5_cc_initialize");


    memset(&cred, 0, sizeof(cred));
    ret = krb5_parse_name(context, "krbtgt/SU.SE@SU.SE", &cred.server);
    if (ret)
 krb5_err(context, 1, ret, "krb5_parse_name");
    ret = krb5_parse_name(context, "lha@SU.SE", &cred.client);
    if (ret)
 krb5_err(context, 1, ret, "krb5_parse_name");

    ret = krb5_cc_store_cred(context, id, &cred);
    if (ret)
 krb5_err(context, 1, ret, "krb5_cc_store_cred");

    ret = krb5_cc_remove_cred(context, id, 0, &cred);
    if (ret)
 krb5_err(context, 1, ret, "krb5_cc_remove_cred");

    ret = krb5_cc_destroy(context, id);
    if (ret)
 krb5_err(context, 1, ret, "krb5_cc_destroy");

    krb5_free_principal(context, p);
    krb5_free_principal(context, cred.server);
    krb5_free_principal(context, cred.client);
}
