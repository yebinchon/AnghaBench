
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int krb5_storage ;
typedef scalar_t__ krb5_error_code ;
struct TYPE_9__ {int length; int data; } ;
typedef TYPE_1__ krb5_data ;
typedef scalar_t__ kadm5_ret_t ;
struct TYPE_10__ {int sock; int context; int ac; } ;
typedef TYPE_2__ kadm5_client_context ;


 scalar_t__ ENOMEM ;
 int SEEK_CUR ;
 int SEEK_SET ;
 int assert (int) ;
 int krb5_clear_error_message (int ) ;
 scalar_t__ krb5_data_alloc (TYPE_1__*,size_t) ;
 int krb5_data_free (TYPE_1__*) ;
 scalar_t__ krb5_mk_priv (int ,int ,TYPE_1__*,TYPE_1__*,int *) ;
 int krb5_storage_free (int *) ;
 int * krb5_storage_from_fd (int) ;
 int krb5_storage_read (int *,int ,int ) ;
 size_t krb5_storage_seek (int *,int ,int ) ;
 scalar_t__ krb5_store_data (int *,TYPE_1__) ;

kadm5_ret_t
_kadm5_client_send(kadm5_client_context *context, krb5_storage *sp)
{
    krb5_data msg, out;
    krb5_error_code ret;
    size_t len;
    krb5_storage *sock;

    assert(context->sock != -1);

    len = krb5_storage_seek(sp, 0, SEEK_CUR);
    ret = krb5_data_alloc(&msg, len);
    if (ret) {
 krb5_clear_error_message(context->context);
 return ret;
    }
    krb5_storage_seek(sp, 0, SEEK_SET);
    krb5_storage_read(sp, msg.data, msg.length);

    ret = krb5_mk_priv(context->context, context->ac, &msg, &out, ((void*)0));
    krb5_data_free(&msg);
    if(ret)
 return ret;

    sock = krb5_storage_from_fd(context->sock);
    if(sock == ((void*)0)) {
 krb5_clear_error_message(context->context);
 krb5_data_free(&out);
 return ENOMEM;
    }

    ret = krb5_store_data(sock, out);
    if (ret)
 krb5_clear_error_message(context->context);
    krb5_storage_free(sock);
    krb5_data_free(&out);
    return ret;
}
