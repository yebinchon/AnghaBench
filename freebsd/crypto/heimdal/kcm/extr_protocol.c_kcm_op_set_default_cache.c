
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct kcm_default_cache {void* name; struct kcm_default_cache* next; int uid; int session; } ;
typedef int krb5_storage ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef int kcm_operation ;
struct TYPE_5__ {int uid; int session; } ;
typedef TYPE_1__ kcm_client ;


 scalar_t__ ENOMEM ;
 int KCM_LOG_REQUEST_NAME (int ,TYPE_1__*,int ,char*) ;
 struct kcm_default_cache* default_caches ;
 int free (void*) ;
 scalar_t__ kcm_is_same_session (TYPE_1__*,int ,int ) ;
 scalar_t__ krb5_ret_stringz (int *,char**) ;
 struct kcm_default_cache* malloc (int) ;
 void* strdup (char*) ;

__attribute__((used)) static krb5_error_code
kcm_op_set_default_cache(krb5_context context,
    kcm_client *client,
    kcm_operation opcode,
    krb5_storage *request,
    krb5_storage *response)
{
    struct kcm_default_cache *c;
    krb5_error_code ret;
    char *name;

    ret = krb5_ret_stringz(request, &name);
    if (ret)
 return ret;

    KCM_LOG_REQUEST_NAME(context, client, opcode, name);

    for (c = default_caches; c != ((void*)0); c = c->next) {
 if (kcm_is_same_session(client, c->uid, c->session))
     break;
    }
    if (c == ((void*)0)) {
 c = malloc(sizeof(*c));
 if (c == ((void*)0))
     return ENOMEM;
 c->session = client->session;
 c->uid = client->uid;
 c->name = strdup(name);

 c->next = default_caches;
 default_caches = c;
    } else {
 free(c->name);
 c->name = strdup(name);
    }

    return 0;
}
