
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int krb5_realm ;
typedef TYPE_3__* krb5_principal ;
typedef int krb5_kdc_configuration ;
typedef int krb5_context ;
typedef int krb5_boolean ;
struct TYPE_10__ {int canonicalize; } ;
struct TYPE_7__ {int len; char** val; } ;
struct TYPE_8__ {scalar_t__ name_type; TYPE_1__ name_string; } ;
struct TYPE_9__ {TYPE_2__ name; } ;
typedef TYPE_4__ KDCOptions ;


 int FALSE ;
 scalar_t__ KRB5_NT_SRV_INST ;
 scalar_t__ _krb5_get_host_realm_int (int ,char const*,int,int **) ;
 int kdc_log (int ,int *,int ,char*,char const*) ;

__attribute__((used)) static krb5_boolean
need_referral(krb5_context context, krb5_kdc_configuration *config,
       const KDCOptions * const options, krb5_principal server,
       krb5_realm **realms)
{
    const char *name;

    if(!options->canonicalize && server->name.name_type != KRB5_NT_SRV_INST)
 return FALSE;

    if (server->name.name_string.len == 1)
 name = server->name.name_string.val[0];
    else if (server->name.name_string.len > 1)
 name = server->name.name_string.val[1];
    else
 return FALSE;

    kdc_log(context, config, 0, "Searching referral for %s", name);

    return _krb5_get_host_realm_int(context, name, FALSE, realms) == 0;
}
