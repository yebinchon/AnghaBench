
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int krb5_principal ;
typedef int krb5_data ;
typedef scalar_t__ kadm5_ret_t ;
struct TYPE_3__ {int ccache; int context; } ;
typedef TYPE_1__ kadm5_ad_context ;


 scalar_t__ ad_get_cred (TYPE_1__*,int *) ;
 int krb5_data_free (int *) ;
 int krb5_data_zero (int *) ;
 scalar_t__ krb5_set_password_using_ccache (int ,int ,char const*,int ,int*,int *,int *) ;

__attribute__((used)) static kadm5_ret_t
kadm5_ad_chpass_principal(void *server_handle,
     krb5_principal principal,
     const char *password)
{
    kadm5_ad_context *context = server_handle;
    krb5_data result_code_string, result_string;
    int result_code;
    kadm5_ret_t ret;

    ret = ad_get_cred(context, ((void*)0));
    if (ret)
 return ret;

    krb5_data_zero (&result_code_string);
    krb5_data_zero (&result_string);

    ret = krb5_set_password_using_ccache (context->context,
       context->ccache,
       password,
       principal,
       &result_code,
       &result_code_string,
       &result_string);

    krb5_data_free (&result_code_string);
    krb5_data_free (&result_string);



    return ret;
}
