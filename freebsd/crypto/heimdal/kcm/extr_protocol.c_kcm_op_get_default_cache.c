
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct kcm_default_cache {char* name; int session; int uid; struct kcm_default_cache* next; } ;
typedef int krb5_storage ;
typedef int krb5_error_code ;
typedef int krb5_context ;
typedef int kcm_operation ;
struct TYPE_6__ {scalar_t__ uid; } ;
typedef TYPE_1__ kcm_client ;


 int ENOMEM ;
 int KCM_LOG_REQUEST (int ,TYPE_1__*,int ) ;
 int asprintf (char**,char*,int) ;
 struct kcm_default_cache* default_caches ;
 int free (char*) ;
 char* kcm_ccache_first_name (TYPE_1__*) ;
 scalar_t__ kcm_is_same_session (TYPE_1__*,int ,int ) ;
 int krb5_store_stringz (int *,char const*) ;

__attribute__((used)) static krb5_error_code
kcm_op_get_default_cache(krb5_context context,
    kcm_client *client,
    kcm_operation opcode,
    krb5_storage *request,
    krb5_storage *response)
{
    struct kcm_default_cache *c;
    krb5_error_code ret;
    const char *name = ((void*)0);
    char *n = ((void*)0);

    KCM_LOG_REQUEST(context, client, opcode);

    for (c = default_caches; c != ((void*)0); c = c->next) {
 if (kcm_is_same_session(client, c->uid, c->session)) {
     name = c->name;
     break;
 }
    }
    if (name == ((void*)0))
 name = n = kcm_ccache_first_name(client);

    if (name == ((void*)0)) {
 asprintf(&n, "%d", (int)client->uid);
 name = n;
    }
    if (name == ((void*)0))
 return ENOMEM;
    ret = krb5_store_stringz(response, name);
    if (n)
 free(n);
    return ret;
}
