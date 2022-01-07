
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_error_code ;
typedef int krb5_context ;


 int ENOMEM ;
 int N_ (char*,char*) ;
 int krb5_set_error_message (int ,int ,int ) ;

krb5_error_code
krb5_enomem(krb5_context context)
{
    krb5_set_error_message(context, ENOMEM, N_("malloc: out of memory", ""));
    return ENOMEM;
}
