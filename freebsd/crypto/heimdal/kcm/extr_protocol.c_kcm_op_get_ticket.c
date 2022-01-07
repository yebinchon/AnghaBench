
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int krb5_storage ;
typedef int * krb5_principal ;
struct TYPE_16__ {int i; } ;
typedef TYPE_3__ krb5_kdc_flags ;
typedef scalar_t__ krb5_error_code ;
struct TYPE_15__ {scalar_t__ endtime; } ;
struct TYPE_14__ {int keytype; } ;
struct TYPE_17__ {TYPE_2__ times; int * server; int client; TYPE_1__ session; } ;
typedef TYPE_4__ krb5_creds ;
typedef int krb5_context ;
typedef int krb5_ccache_data ;
typedef int kcm_operation ;
typedef int kcm_client ;
typedef TYPE_5__* kcm_ccache ;
typedef int in ;
struct TYPE_18__ {int mutex; int client; } ;


 int HEIMDAL_MUTEX_lock (int *) ;
 int HEIMDAL_MUTEX_unlock (int *) ;
 int KCM_LOG_REQUEST_NAME (int ,int *,int ,char*) ;
 int free (char*) ;
 scalar_t__ kcm_ccache_resolve_client (int ,int *,int ,char*,TYPE_5__**) ;
 int kcm_internal_ccache (int ,TYPE_5__*,int *) ;
 int kcm_release_ccache (int ,TYPE_5__*) ;
 int krb5_free_cred_contents (int ,TYPE_4__*) ;
 int krb5_free_principal (int ,int *) ;
 scalar_t__ krb5_get_credentials_with_flags (int ,int ,TYPE_3__,int *,TYPE_4__*,TYPE_4__**) ;
 scalar_t__ krb5_ret_int32 (int *,int *) ;
 scalar_t__ krb5_ret_principal (int *,int **) ;
 scalar_t__ krb5_ret_stringz (int *,char**) ;
 scalar_t__ krb5_ret_uint32 (int *,int *) ;
 int memset (TYPE_4__*,int ,int) ;

__attribute__((used)) static krb5_error_code
kcm_op_get_ticket(krb5_context context,
    kcm_client *client,
    kcm_operation opcode,
    krb5_storage *request,
    krb5_storage *response)
{
    krb5_error_code ret;
    kcm_ccache ccache;
    char *name;
    krb5_principal server = ((void*)0);
    krb5_ccache_data ccdata;
    krb5_creds in, *out;
    krb5_kdc_flags flags;

    memset(&in, 0, sizeof(in));

    ret = krb5_ret_stringz(request, &name);
    if (ret)
 return ret;

    KCM_LOG_REQUEST_NAME(context, client, opcode, name);

    ret = krb5_ret_uint32(request, &flags.i);
    if (ret) {
 free(name);
 return ret;
    }

    ret = krb5_ret_int32(request, &in.session.keytype);
    if (ret) {
 free(name);
 return ret;
    }

    ret = krb5_ret_principal(request, &server);
    if (ret) {
 free(name);
 return ret;
    }

    ret = kcm_ccache_resolve_client(context, client, opcode,
        name, &ccache);
    if (ret) {
 krb5_free_principal(context, server);
 free(name);
 return ret;
    }

    HEIMDAL_MUTEX_lock(&ccache->mutex);


    kcm_internal_ccache(context, ccache, &ccdata);

    in.client = ccache->client;
    in.server = server;
    in.times.endtime = 0;


    ret = krb5_get_credentials_with_flags(context, 0, flags,
       &ccdata, &in, &out);

    HEIMDAL_MUTEX_unlock(&ccache->mutex);

    krb5_free_principal(context, server);

    if (ret == 0)
 krb5_free_cred_contents(context, out);

    kcm_release_ccache(context, ccache);
    free(name);

    return ret;
}
