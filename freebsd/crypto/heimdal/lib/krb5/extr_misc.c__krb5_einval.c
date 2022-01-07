
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_error_code ;
typedef int krb5_context ;


 int EINVAL ;
 int N_ (char*,char*) ;
 int _krb5_debug (int ,int,char*,char const*,unsigned long) ;
 int _krb5_debug_backtrace (int ) ;
 scalar_t__ _krb5_have_debug (int ,int) ;
 int krb5_set_error_message (int ,int ,int ,char const*,unsigned long) ;

krb5_error_code
_krb5_einval(krb5_context context, const char *func, unsigned long argn)
{

    krb5_set_error_message(context, EINVAL,
      N_("programmer error: invalid argument to %s argument %lu",
         "function:line"),
      func, argn);
    if (_krb5_have_debug(context, 10)) {
 _krb5_debug(context, 10, "invalid argument to function %s argument %lu",
      func, argn);
 _krb5_debug_backtrace(context);
    }

    return EINVAL;
}
