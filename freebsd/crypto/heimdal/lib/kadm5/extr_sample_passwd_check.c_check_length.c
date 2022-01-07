
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int krb5_principal ;
struct TYPE_3__ {int length; } ;
typedef TYPE_1__ krb5_data ;
typedef int krb5_context ;


 int krb5_config_get_int_default (int ,int *,int,char*,char*,int *) ;

const char*
check_length(krb5_context context,
             krb5_principal prinipal,
             krb5_data *password)
{
    int min_length = krb5_config_get_int_default(context, ((void*)0), 6,
       "password_quality",
       "min_length",
       ((void*)0));
    if(password->length < min_length)
 return "Password too short";
    return ((void*)0);
}
