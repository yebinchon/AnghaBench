
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int * krb5_principal ;
typedef scalar_t__ krb5_error_code ;
struct TYPE_5__ {int length; int data; } ;
typedef TYPE_1__ krb5_data ;
typedef int krb5_context ;
typedef int krb5_ccache ;


 int krb5_cc_destroy (int ,int ) ;
 scalar_t__ krb5_cc_get_config (int ,int ,int *,char*,TYPE_1__*) ;
 scalar_t__ krb5_cc_initialize (int ,int ,int *) ;
 scalar_t__ krb5_cc_new_unique (int ,char*,char*,int *) ;
 scalar_t__ krb5_cc_set_config (int ,int ,int *,char*,TYPE_1__*) ;
 int krb5_data_free (TYPE_1__*) ;
 int krb5_err (int ,int,scalar_t__,char*) ;
 int krb5_errx (int ,int,char*) ;
 int krb5_free_principal (int ,int *) ;
 scalar_t__ krb5_parse_name (int ,char*,int **) ;
 int rk_UNCONST (char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static void
test_cc_config(krb5_context context)
{
    krb5_error_code ret;
    krb5_principal p;
    krb5_ccache id;
    unsigned int i;

    ret = krb5_cc_new_unique(context, "MEMORY", "bar", &id);
    if (ret)
 krb5_err(context, 1, ret, "krb5_cc_new_unique");

    ret = krb5_parse_name(context, "lha@SU.SE", &p);
    if (ret)
 krb5_err(context, 1, ret, "krb5_parse_name");

    ret = krb5_cc_initialize(context, id, p);
    if (ret)
 krb5_err(context, 1, ret, "krb5_cc_initialize");

    for (i = 0; i < 1000; i++) {
 krb5_data data, data2;
 const char *name = "foo";
 krb5_principal p1 = ((void*)0);

 if (i & 1)
     p1 = p;

 data.data = rk_UNCONST(name);
 data.length = strlen(name);

 ret = krb5_cc_set_config(context, id, p1, "FriendlyName", &data);
 if (ret)
     krb5_errx(context, 1, "krb5_cc_set_config: add");

 ret = krb5_cc_get_config(context, id, p1, "FriendlyName", &data2);
 if (ret)
     krb5_errx(context, 1, "krb5_cc_get_config: first");
 krb5_data_free(&data2);

 ret = krb5_cc_set_config(context, id, p1, "FriendlyName", &data);
 if (ret)
     krb5_errx(context, 1, "krb5_cc_set_config: add -second");

 ret = krb5_cc_get_config(context, id, p1, "FriendlyName", &data2);
 if (ret)
     krb5_errx(context, 1, "krb5_cc_get_config: second");
 krb5_data_free(&data2);

 ret = krb5_cc_set_config(context, id, p1, "FriendlyName", ((void*)0));
 if (ret)
     krb5_errx(context, 1, "krb5_cc_set_config: delete");

 ret = krb5_cc_get_config(context, id, p1, "FriendlyName", &data2);
 if (ret == 0)
     krb5_errx(context, 1, "krb5_cc_get_config: non-existant");
    }

    krb5_cc_destroy(context, id);
    krb5_free_principal(context, p);
}
