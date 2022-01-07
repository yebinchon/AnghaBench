
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int krb5_error_code ;
typedef TYPE_1__* krb5_context ;
struct TYPE_5__ {scalar_t__ num_cc_ops; int * cc_ops; } ;


 int TRUE ;
 int _krb5_load_ccache_plugins (TYPE_1__*) ;
 int krb5_acc_ops ;
 int krb5_akcm_ops ;
 int krb5_cc_register (TYPE_1__*,int *,int ) ;
 int krb5_fcc_ops ;
 int krb5_kcm_ops ;
 int krb5_mcc_ops ;
 int krb5_scc_ops ;

__attribute__((used)) static krb5_error_code
cc_ops_register(krb5_context context)
{
    context->cc_ops = ((void*)0);
    context->num_cc_ops = 0;


    krb5_cc_register(context, &krb5_acc_ops, TRUE);

    krb5_cc_register(context, &krb5_fcc_ops, TRUE);
    krb5_cc_register(context, &krb5_mcc_ops, TRUE);
    _krb5_load_ccache_plugins(context);
    return 0;
}
