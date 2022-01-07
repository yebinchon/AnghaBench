
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int krb5_context ;
struct TYPE_4__ {scalar_t__ my_context; int caller; int config; int log_context; TYPE_2__* db; int context; } ;
typedef TYPE_1__ kadm5_server_context ;
typedef int kadm5_ret_t ;
struct TYPE_5__ {int (* hdb_destroy ) (int ,TYPE_2__*) ;} ;


 int destroy_config (int *) ;
 int destroy_kadm5_log_context (int *) ;
 int free (TYPE_1__*) ;
 int krb5_free_context (int ) ;
 int krb5_free_principal (int ,int ) ;
 int stub1 (int ,TYPE_2__*) ;

kadm5_ret_t
kadm5_s_destroy(void *server_handle)
{
    kadm5_ret_t ret;
    kadm5_server_context *context = server_handle;
    krb5_context kcontext = context->context;

    ret = context->db->hdb_destroy(kcontext, context->db);
    destroy_kadm5_log_context (&context->log_context);
    destroy_config (&context->config);
    krb5_free_principal (kcontext, context->caller);
    if(context->my_context)
 krb5_free_context(kcontext);
    free (context);
    return ret;
}
