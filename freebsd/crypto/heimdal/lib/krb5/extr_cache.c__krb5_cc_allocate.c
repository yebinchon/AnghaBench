
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int krb5_error_code ;
typedef int krb5_context ;
typedef TYPE_1__* krb5_ccache ;
typedef int krb5_cc_ops ;
struct TYPE_4__ {int const* ops; } ;


 int KRB5_CC_NOMEM ;
 int N_ (char*,char*) ;
 int krb5_set_error_message (int ,int ,int ) ;
 TYPE_1__* malloc (int) ;

krb5_error_code
_krb5_cc_allocate(krb5_context context,
    const krb5_cc_ops *ops,
    krb5_ccache *id)
{
    krb5_ccache p;

    p = malloc (sizeof(*p));
    if(p == ((void*)0)) {
 krb5_set_error_message(context, KRB5_CC_NOMEM,
          N_("malloc: out of memory", ""));
 return KRB5_CC_NOMEM;
    }
    p->ops = ops;
    *id = p;

    return 0;
}
