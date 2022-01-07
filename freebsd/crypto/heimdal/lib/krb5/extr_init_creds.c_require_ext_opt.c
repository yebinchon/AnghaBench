
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * opt_private; } ;
typedef TYPE_1__ krb5_get_init_creds_opt ;
typedef int krb5_error_code ;
typedef int krb5_context ;


 int EINVAL ;
 int N_ (char*,char*) ;
 int krb5_set_error_message (int ,int ,int ,char const*) ;

__attribute__((used)) static krb5_error_code
require_ext_opt(krb5_context context,
  krb5_get_init_creds_opt *opt,
  const char *type)
{
    if (opt->opt_private == ((void*)0)) {
 krb5_set_error_message(context, EINVAL,
          N_("%s on non extendable opt", ""), type);
 return EINVAL;
    }
    return 0;
}
