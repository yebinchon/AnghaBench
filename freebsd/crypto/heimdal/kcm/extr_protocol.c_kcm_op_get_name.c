
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int krb5_storage ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef int kcm_operation ;
typedef int kcm_client ;
typedef TYPE_1__* kcm_ccache ;
struct TYPE_4__ {int name; } ;


 int KCM_LOG_REQUEST_NAME (int ,int *,int ,char*) ;
 int free (char*) ;
 scalar_t__ kcm_ccache_resolve_client (int ,int *,int ,char*,TYPE_1__**) ;
 int kcm_release_ccache (int ,TYPE_1__*) ;
 scalar_t__ krb5_ret_stringz (int *,char**) ;
 scalar_t__ krb5_store_stringz (int *,int ) ;

__attribute__((used)) static krb5_error_code
kcm_op_get_name(krb5_context context,
  kcm_client *client,
  kcm_operation opcode,
  krb5_storage *request,
  krb5_storage *response)

{
    krb5_error_code ret;
    char *name = ((void*)0);
    kcm_ccache ccache;

    ret = krb5_ret_stringz(request, &name);
    if (ret)
 return ret;

    KCM_LOG_REQUEST_NAME(context, client, opcode, name);

    ret = kcm_ccache_resolve_client(context, client, opcode,
        name, &ccache);
    if (ret) {
 free(name);
 return ret;
    }

    ret = krb5_store_stringz(response, ccache->name);
    if (ret) {
 kcm_release_ccache(context, ccache);
 free(name);
 return ret;
    }

    free(name);
    kcm_release_ccache(context, ccache);
    return 0;
}
