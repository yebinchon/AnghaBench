
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uuid ;
typedef int ssize_t ;
typedef int krb5_storage ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef int kcmuuid_t ;
typedef int kcm_operation ;
typedef int kcm_client ;
typedef TYPE_1__* kcm_ccache ;
struct TYPE_5__ {int name; } ;


 int KCM_LOG_REQUEST (int ,int *,int ) ;
 scalar_t__ KRB5_CC_IO ;
 scalar_t__ KRB5_FCC_NOFILE ;
 scalar_t__ kcm_access (int ,int *,int ,TYPE_1__*) ;
 scalar_t__ kcm_ccache_resolve_by_uuid (int ,int ,TYPE_1__**) ;
 int kcm_release_ccache (int ,TYPE_1__*) ;
 int krb5_clear_error_message (int ) ;
 int krb5_storage_read (int *,int *,int) ;
 scalar_t__ krb5_store_stringz (int *,int ) ;

__attribute__((used)) static krb5_error_code
kcm_op_get_cache_by_uuid(krb5_context context,
    kcm_client *client,
    kcm_operation opcode,
    krb5_storage *request,
    krb5_storage *response)
{
    krb5_error_code ret;
    kcmuuid_t uuid;
    ssize_t sret;
    kcm_ccache cache;

    KCM_LOG_REQUEST(context, client, opcode);

    sret = krb5_storage_read(request, &uuid, sizeof(uuid));
    if (sret != sizeof(uuid)) {
 krb5_clear_error_message(context);
 return KRB5_CC_IO;
    }

    ret = kcm_ccache_resolve_by_uuid(context, uuid, &cache);
    if (ret)
 return ret;

    ret = kcm_access(context, client, opcode, cache);
    if (ret)
 ret = KRB5_FCC_NOFILE;

    if (ret == 0)
 ret = krb5_store_stringz(response, cache->name);

    kcm_release_ccache(context, cache);

    return ret;
}
