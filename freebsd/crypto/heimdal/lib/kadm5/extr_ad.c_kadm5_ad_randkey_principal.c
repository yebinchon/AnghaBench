
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int password ;
typedef int p ;
typedef int krb5_principal ;
typedef char krb5_keyblock ;
typedef int krb5_data ;
typedef scalar_t__ kadm5_ret_t ;
struct TYPE_3__ {int context; int ccache; } ;
typedef TYPE_1__ kadm5_ad_context ;


 int ENCTYPE_ARCFOUR_HMAC_MD5 ;
 scalar_t__ ENOMEM ;
 scalar_t__ KADM5_RPC_ERROR ;
 scalar_t__ ad_get_cred (TYPE_1__*,int *) ;
 int base64_encode (char*,int,char**) ;
 int free (char*) ;
 int krb5_data_free (int *) ;
 int krb5_data_zero (int *) ;
 int krb5_generate_random_block (char*,int) ;
 int krb5_set_error_message (int ,scalar_t__,char*) ;
 scalar_t__ krb5_set_password_using_ccache (int ,int ,char*,int ,int*,int *,int *) ;
 scalar_t__ krb5_string_to_key (int ,int ,char*,int ,char*) ;
 char* malloc (int) ;
 int memset (char*,int ,int) ;

__attribute__((used)) static kadm5_ret_t
kadm5_ad_randkey_principal(void *server_handle,
      krb5_principal principal,
      krb5_keyblock **keys,
      int *n_keys)
{
    kadm5_ad_context *context = server_handle;
    *keys = ((void*)0);
    *n_keys = 0;

    krb5_set_error_message(context->context, KADM5_RPC_ERROR, "Function not implemented");
    return KADM5_RPC_ERROR;

}
