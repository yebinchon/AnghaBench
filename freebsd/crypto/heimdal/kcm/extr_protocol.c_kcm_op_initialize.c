
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int krb5_storage ;
typedef int krb5_principal ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef int kcm_operation ;
struct TYPE_6__ {int fire_time; TYPE_2__* ccache; int action; scalar_t__ backoff_time; scalar_t__ expire_time; } ;
typedef TYPE_1__ kcm_event ;
typedef int kcm_client ;
typedef TYPE_2__* kcm_ccache ;
struct TYPE_7__ {int client; } ;


 int KCM_EVENT_DESTROY_EMPTY_CACHE ;
 int KCM_LOG_REQUEST (int ,int *,int ) ;
 int free (char*) ;
 scalar_t__ kcm_ccache_new_client (int ,int *,char*,TYPE_2__**) ;
 scalar_t__ kcm_enqueue_event_relative (int ,TYPE_1__*) ;
 int kcm_release_ccache (int ,TYPE_2__*) ;
 int krb5_free_principal (int ,int ) ;
 scalar_t__ krb5_ret_principal (int *,int *) ;
 scalar_t__ krb5_ret_stringz (int *,char**) ;

__attribute__((used)) static krb5_error_code
kcm_op_initialize(krb5_context context,
    kcm_client *client,
    kcm_operation opcode,
    krb5_storage *request,
    krb5_storage *response)
{
    kcm_ccache ccache;
    krb5_principal principal;
    krb5_error_code ret;
    char *name;




    KCM_LOG_REQUEST(context, client, opcode);

    ret = krb5_ret_stringz(request, &name);
    if (ret)
 return ret;

    ret = krb5_ret_principal(request, &principal);
    if (ret) {
 free(name);
 return ret;
    }

    ret = kcm_ccache_new_client(context, client, name, &ccache);
    if (ret) {
 free(name);
 krb5_free_principal(context, principal);
 return ret;
    }

    ccache->client = principal;

    free(name);
    kcm_release_ccache(context, ccache);

    return ret;
}
