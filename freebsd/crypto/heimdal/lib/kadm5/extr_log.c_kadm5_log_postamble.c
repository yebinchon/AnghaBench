
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int krb5_storage ;
typedef int kadm5_ret_t ;
struct TYPE_3__ {int version; } ;
typedef TYPE_1__ kadm5_log_context ;


 int krb5_store_int32 (int *,int ) ;

__attribute__((used)) static kadm5_ret_t
kadm5_log_postamble (kadm5_log_context *context,
       krb5_storage *sp)
{
    krb5_store_int32 (sp, context->version);
    return 0;
}
