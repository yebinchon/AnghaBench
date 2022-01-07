
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int kadm5_ret_t ;
struct TYPE_2__ {int context; scalar_t__ my_context; int * ac; scalar_t__ service_name; scalar_t__ client_name; int sock; scalar_t__ admin_server; scalar_t__ realm; } ;
typedef TYPE_1__ kadm5_client_context ;


 int close (int ) ;
 int free (scalar_t__) ;
 int krb5_auth_con_free (int ,int *) ;
 int krb5_free_context (int ) ;

kadm5_ret_t
kadm5_c_destroy(void *server_handle)
{
    kadm5_client_context *context = server_handle;

    free(context->realm);
    free(context->admin_server);
    close(context->sock);
    if (context->client_name)
 free(context->client_name);
    if (context->service_name)
 free(context->service_name);
    if (context->ac != ((void*)0))
 krb5_auth_con_free(context->context, context->ac);
    if(context->my_context)
 krb5_free_context(context->context);
    return 0;
}
