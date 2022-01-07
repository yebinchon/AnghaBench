
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_error_code ;
typedef int krb5_context ;
typedef int krb5_ccache ;


 int krb5_cc_close (int ,int ) ;
 int krb5_cc_default (int ,int *) ;
 int krb5_cc_set_default_name (int ,char*) ;
 int krb5_err (int ,int,int ,char*) ;
 int krb5_free_context (int ) ;
 int krb5_init_context (int *) ;

__attribute__((used)) static void
test_mcc_default(void)
{
    krb5_context context;
    krb5_error_code ret;
    krb5_ccache id, id2;
    int i;

    for (i = 0; i < 10; i++) {

 ret = krb5_init_context(&context);
 if (ret)
     krb5_err(context, 1, ret, "krb5_init_context");

 ret = krb5_cc_set_default_name(context, "MEMORY:foo");
 if (ret)
     krb5_err(context, 1, ret, "krb5_cc_set_default_name");

 ret = krb5_cc_default(context, &id);
 if (ret)
     krb5_err(context, 1, ret, "krb5_cc_default");

 ret = krb5_cc_default(context, &id2);
 if (ret)
     krb5_err(context, 1, ret, "krb5_cc_default");

 ret = krb5_cc_close(context, id);
 if (ret)
     krb5_err(context, 1, ret, "krb5_cc_close");

 ret = krb5_cc_close(context, id2);
 if (ret)
     krb5_err(context, 1, ret, "krb5_cc_close");

 krb5_free_context(context);
    }
}
