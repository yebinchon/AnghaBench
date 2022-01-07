
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int off_t ;
typedef int krb5_storage ;
typedef int krb5_principal ;
struct TYPE_5__ {int log_context; } ;
typedef TYPE_1__ kadm5_server_context ;
typedef scalar_t__ kadm5_ret_t ;
typedef int kadm5_log_context ;


 scalar_t__ ENOMEM ;
 int SEEK_CUR ;
 scalar_t__ kadm5_log_end (TYPE_1__*) ;
 scalar_t__ kadm5_log_flush (int *,int *) ;
 scalar_t__ kadm5_log_postamble (int *,int *) ;
 scalar_t__ kadm5_log_preamble (TYPE_1__*,int *,int ) ;
 int kadm_delete ;
 int * krb5_storage_emem () ;
 int krb5_storage_free (int *) ;
 int krb5_storage_seek (int *,int,int ) ;
 scalar_t__ krb5_store_int32 (int *,int) ;
 scalar_t__ krb5_store_principal (int *,int ) ;

kadm5_ret_t
kadm5_log_delete (kadm5_server_context *context,
    krb5_principal princ)
{
    krb5_storage *sp;
    kadm5_ret_t ret;
    off_t off;
    off_t len;
    kadm5_log_context *log_context = &context->log_context;

    sp = krb5_storage_emem();
    if (sp == ((void*)0))
 return ENOMEM;
    ret = kadm5_log_preamble (context, sp, kadm_delete);
    if (ret)
 goto out;
    ret = krb5_store_int32 (sp, 0);
    if (ret)
 goto out;
    off = krb5_storage_seek (sp, 0, SEEK_CUR);
    ret = krb5_store_principal (sp, princ);
    if (ret)
 goto out;
    len = krb5_storage_seek (sp, 0, SEEK_CUR) - off;
    krb5_storage_seek(sp, -(len + 4), SEEK_CUR);
    ret = krb5_store_int32 (sp, len);
    if (ret)
 goto out;
    krb5_storage_seek(sp, len, SEEK_CUR);
    ret = krb5_store_int32 (sp, len);
    if (ret)
 goto out;
    ret = kadm5_log_postamble (log_context, sp);
    if (ret)
 goto out;
    ret = kadm5_log_flush (log_context, sp);
    if (ret)
 goto out;
    ret = kadm5_log_end (context);
out:
    krb5_storage_free (sp);
    return ret;
}
