
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int va_list ;
struct TYPE_3__ {int logf; } ;
typedef TYPE_1__ krb5_kdc_configuration ;
typedef int krb5_context ;


 int krb5_vlog_msg (int ,int ,char**,int,char const*,int ) ;

char*
kdc_log_msg_va(krb5_context context,
        krb5_kdc_configuration *config,
        int level, const char *fmt, va_list ap)
{
    char *msg;
    krb5_vlog_msg(context, config->logf, &msg, level, fmt, ap);
    return msg;
}
