
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int krb5_storage ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_data ;
typedef scalar_t__ kadm5_ret_t ;
struct TYPE_3__ {int ac; int context; int sock; } ;
typedef TYPE_1__ kadm5_client_context ;


 scalar_t__ ENOMEM ;
 scalar_t__ KADM5_RPC_ERROR ;
 scalar_t__ KRB5_CC_END ;
 int krb5_clear_error_message (int ) ;
 int krb5_data_free (int *) ;
 scalar_t__ krb5_rd_priv (int ,int ,int *,int *,int *) ;
 scalar_t__ krb5_ret_data (int *,int *) ;
 int krb5_storage_free (int *) ;
 int * krb5_storage_from_fd (int ) ;

kadm5_ret_t
_kadm5_client_recv(kadm5_client_context *context, krb5_data *reply)
{
    krb5_error_code ret;
    krb5_data data;
    krb5_storage *sock;

    sock = krb5_storage_from_fd(context->sock);
    if(sock == ((void*)0)) {
 krb5_clear_error_message(context->context);
 return ENOMEM;
    }
    ret = krb5_ret_data(sock, &data);
    krb5_storage_free(sock);
    krb5_clear_error_message(context->context);
    if(ret == KRB5_CC_END)
 return KADM5_RPC_ERROR;
    else if(ret)
 return ret;

    ret = krb5_rd_priv(context->context, context->ac, &data, reply, ((void*)0));
    krb5_data_free(&data);
    return ret;
}
