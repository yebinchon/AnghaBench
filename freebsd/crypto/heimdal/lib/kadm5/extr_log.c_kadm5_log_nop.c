
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int krb5_storage ;
struct TYPE_4__ {int log_context; } ;
typedef TYPE_1__ kadm5_server_context ;
typedef scalar_t__ kadm5_ret_t ;
typedef int kadm5_log_context ;


 scalar_t__ kadm5_log_flush (int *,int *) ;
 scalar_t__ kadm5_log_postamble (int *,int *) ;
 scalar_t__ kadm5_log_preamble (TYPE_1__*,int *,int ) ;
 int kadm_nop ;
 int * krb5_storage_emem () ;
 int krb5_storage_free (int *) ;
 int krb5_store_int32 (int *,int ) ;

kadm5_ret_t
kadm5_log_nop (kadm5_server_context *context)
{
    krb5_storage *sp;
    kadm5_ret_t ret;
    kadm5_log_context *log_context = &context->log_context;

    sp = krb5_storage_emem();
    ret = kadm5_log_preamble (context, sp, kadm_nop);
    if (ret) {
 krb5_storage_free (sp);
 return ret;
    }
    krb5_store_int32 (sp, 0);
    krb5_store_int32 (sp, 0);
    ret = kadm5_log_postamble (log_context, sp);
    if (ret) {
 krb5_storage_free (sp);
 return ret;
    }
    ret = kadm5_log_flush (log_context, sp);
    krb5_storage_free (sp);

    return ret;
}
