
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int krb5_storage ;
typedef int krb5_error_code ;
typedef int krb5_context ;
typedef int kcm_operation ;
struct TYPE_4__ {int gid; int uid; int pid; } ;
typedef TYPE_1__ kcm_client ;


 int KCM_LOG_REQUEST (int ,TYPE_1__*,int ) ;
 int KRB5_CC_NOMEM ;
 int free (char*) ;
 char* kcm_ccache_nextid (int ,int ,int ) ;
 int krb5_store_stringz (int *,char*) ;

__attribute__((used)) static krb5_error_code
kcm_op_gen_new(krb5_context context,
        kcm_client *client,
        kcm_operation opcode,
        krb5_storage *request,
        krb5_storage *response)
{
    krb5_error_code ret;
    char *name;

    KCM_LOG_REQUEST(context, client, opcode);

    name = kcm_ccache_nextid(client->pid, client->uid, client->gid);
    if (name == ((void*)0)) {
 return KRB5_CC_NOMEM;
    }

    ret = krb5_store_stringz(response, name);
    free(name);

    return ret;
}
