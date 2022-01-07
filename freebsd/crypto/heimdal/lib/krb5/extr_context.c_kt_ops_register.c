
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int krb5_error_code ;
typedef TYPE_1__* krb5_context ;
struct TYPE_4__ {int * kt_types; scalar_t__ num_kt_types; } ;


 int krb5_akf_ops ;
 int krb5_any_ops ;
 int krb5_fkt_ops ;
 int krb5_javakt_ops ;
 int krb5_kt_register (TYPE_1__*,int *) ;
 int krb5_mkt_ops ;
 int krb5_wrfkt_ops ;

__attribute__((used)) static krb5_error_code
kt_ops_register(krb5_context context)
{
    context->num_kt_types = 0;
    context->kt_types = ((void*)0);

    krb5_kt_register (context, &krb5_fkt_ops);
    krb5_kt_register (context, &krb5_wrfkt_ops);
    krb5_kt_register (context, &krb5_javakt_ops);
    krb5_kt_register (context, &krb5_mkt_ops);

    krb5_kt_register (context, &krb5_akf_ops);

    krb5_kt_register (context, &krb5_any_ops);
    return 0;
}
