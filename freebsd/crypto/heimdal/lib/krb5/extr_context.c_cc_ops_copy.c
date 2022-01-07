
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int krb5_error_code ;
typedef TYPE_1__* krb5_context ;
typedef int krb5_cc_ops ;
typedef int cc_ops ;
struct TYPE_5__ {int num_cc_ops; int const** cc_ops; } ;


 int KRB5_CC_NOMEM ;
 int N_ (char*,char*) ;
 int krb5_set_error_message (TYPE_1__*,int ,int ) ;
 int ** malloc (int) ;
 int memcpy (int ,int const**,int) ;
 int rk_UNCONST (int const**) ;

__attribute__((used)) static krb5_error_code
cc_ops_copy(krb5_context context, const krb5_context src_context)
{
    const krb5_cc_ops **cc_ops;

    context->cc_ops = ((void*)0);
    context->num_cc_ops = 0;

    if (src_context->num_cc_ops == 0)
 return 0;

    cc_ops = malloc(sizeof(cc_ops[0]) * src_context->num_cc_ops);
    if (cc_ops == ((void*)0)) {
 krb5_set_error_message(context, KRB5_CC_NOMEM,
          N_("malloc: out of memory", ""));
 return KRB5_CC_NOMEM;
    }

    memcpy(rk_UNCONST(cc_ops), src_context->cc_ops,
    sizeof(cc_ops[0]) * src_context->num_cc_ops);
    context->cc_ops = cc_ops;
    context->num_cc_ops = src_context->num_cc_ops;

    return 0;
}
