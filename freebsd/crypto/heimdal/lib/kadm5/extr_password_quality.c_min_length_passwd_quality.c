
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int krb5_principal ;
struct TYPE_3__ {scalar_t__ length; } ;
typedef TYPE_1__ krb5_data ;
typedef int krb5_context ;


 scalar_t__ krb5_config_get_int_default (int ,int *,int,char*,char*,int *) ;
 int strlcpy (char*,char*,size_t) ;

__attribute__((used)) static int
min_length_passwd_quality (krb5_context context,
      krb5_principal principal,
      krb5_data *pwd,
      const char *opaque,
      char *message,
      size_t length)
{
    uint32_t min_length = krb5_config_get_int_default(context, ((void*)0), 6,
            "password_quality",
            "min_length",
            ((void*)0));

    if (pwd->length < min_length) {
 strlcpy(message, "Password too short", length);
 return 1;
    } else
 return 0;
}
