
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int message ;
typedef int krb5_principal ;
typedef int krb5_data ;
typedef int krb5_context ;


 int min_length_passwd_quality (int ,int ,int *,int *,char*,int) ;

__attribute__((used)) static const char *
min_length_passwd_quality_v0 (krb5_context context,
         krb5_principal principal,
         krb5_data *pwd)
{
    static char message[1024];
    int ret;

    message[0] = '\0';

    ret = min_length_passwd_quality(context, principal, pwd, ((void*)0),
        message, sizeof(message));
    if (ret)
 return message;
    return ((void*)0);
}
