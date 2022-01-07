
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int krb5_storage ;
struct TYPE_6__ {int version; } ;
struct TYPE_5__ {TYPE_2__ log_context; } ;
typedef TYPE_1__ kadm5_server_context ;
typedef scalar_t__ kadm5_ret_t ;
typedef TYPE_2__ kadm5_log_context ;
typedef enum kadm_ops { ____Placeholder_kadm_ops } kadm_ops ;


 scalar_t__ kadm5_log_init (TYPE_1__*) ;
 int krb5_store_int32 (int *,int) ;
 int time (int *) ;

__attribute__((used)) static kadm5_ret_t
kadm5_log_preamble (kadm5_server_context *context,
      krb5_storage *sp,
      enum kadm_ops op)
{
    kadm5_log_context *log_context = &context->log_context;
    kadm5_ret_t kadm_ret;

    kadm_ret = kadm5_log_init (context);
    if (kadm_ret)
 return kadm_ret;

    krb5_store_int32 (sp, ++log_context->version);
    krb5_store_int32 (sp, time(((void*)0)));
    krb5_store_int32 (sp, op);
    return 0;
}
