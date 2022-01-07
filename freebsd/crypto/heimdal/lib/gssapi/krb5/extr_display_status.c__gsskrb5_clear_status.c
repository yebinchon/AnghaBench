
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_context ;


 scalar_t__ _gsskrb5_init (int *) ;
 int krb5_clear_error_message (int ) ;

void
_gsskrb5_clear_status (void)
{
    krb5_context context;

    if (_gsskrb5_init (&context) != 0)
 return;
    krb5_clear_error_message(context);
}
