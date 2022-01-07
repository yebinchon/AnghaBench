
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ krb5_error_code ;
typedef TYPE_2__* kcm_ccache ;
struct TYPE_7__ {int keytab; } ;
struct TYPE_8__ {scalar_t__ renew_life; scalar_t__ tkt_life; int mode; TYPE_1__ key; int server; int client; int flags; } ;


 scalar_t__ EINVAL ;
 int FALSE ;
 int KCM_FLAGS_OWNER_IS_SYSTEM ;
 int KCM_FLAGS_USE_KEYTAB ;
 int disallow_getting_krbtgt ;
 scalar_t__ kcm_ccache_enqueue_default (int ,TYPE_2__*,int *) ;
 scalar_t__ kcm_ccache_new (int ,char*,TYPE_2__**) ;
 int kcm_context ;
 int kcm_release_ccache (int ,TYPE_2__*) ;
 void* kcm_system_config_get_string (char*) ;
 int krb5_config_get_bool_default (int ,int *,int ,char*,char*,int *) ;
 scalar_t__ krb5_kt_default (int ,int *) ;
 scalar_t__ krb5_kt_resolve (int ,int *,int *) ;
 scalar_t__ krb5_parse_name (int ,int *,int *) ;
 scalar_t__ parse_owners (TYPE_2__*) ;
 void* parse_time (char*,char*) ;
 char* renew_life ;
 int sscanf (int *,char*,int*) ;
 char* system_cache_name ;
 int * system_keytab ;
 int * system_perms ;
 int * system_principal ;
 int * system_server ;
 char* ticket_life ;

__attribute__((used)) static krb5_error_code
ccache_init_system(void)
{
    kcm_ccache ccache;
    krb5_error_code ret;

    if (system_cache_name == ((void*)0))
 system_cache_name = kcm_system_config_get_string("cc_name");

    ret = kcm_ccache_new(kcm_context,
    system_cache_name ? system_cache_name : "SYSTEM",
    &ccache);
    if (ret)
 return ret;

    ccache->flags |= KCM_FLAGS_OWNER_IS_SYSTEM;
    ccache->flags |= KCM_FLAGS_USE_KEYTAB;

    ret = parse_owners(ccache);
    if (ret)
 return ret;

    ret = krb5_parse_name(kcm_context, system_principal, &ccache->client);
    if (ret) {
 kcm_release_ccache(kcm_context, ccache);
 return ret;
    }

    if (system_server == ((void*)0))
 system_server = kcm_system_config_get_string("server");

    if (system_server != ((void*)0)) {
 ret = krb5_parse_name(kcm_context, system_server, &ccache->server);
 if (ret) {
     kcm_release_ccache(kcm_context, ccache);
     return ret;
 }
    }

    if (system_keytab == ((void*)0))
 system_keytab = kcm_system_config_get_string("keytab_name");

    if (system_keytab != ((void*)0)) {
 ret = krb5_kt_resolve(kcm_context, system_keytab, &ccache->key.keytab);
    } else {
 ret = krb5_kt_default(kcm_context, &ccache->key.keytab);
    }
    if (ret) {
 kcm_release_ccache(kcm_context, ccache);
 return ret;
    }

    if (renew_life == ((void*)0))
 renew_life = kcm_system_config_get_string("renew_life");

    if (renew_life == ((void*)0))
 renew_life = "1 month";

    if (renew_life != ((void*)0)) {
 ccache->renew_life = parse_time(renew_life, "s");
 if (ccache->renew_life < 0) {
     kcm_release_ccache(kcm_context, ccache);
     return EINVAL;
 }
    }

    if (ticket_life == ((void*)0))
 ticket_life = kcm_system_config_get_string("ticket_life");

    if (ticket_life != ((void*)0)) {
 ccache->tkt_life = parse_time(ticket_life, "s");
 if (ccache->tkt_life < 0) {
     kcm_release_ccache(kcm_context, ccache);
     return EINVAL;
 }
    }

    if (system_perms == ((void*)0))
 system_perms = kcm_system_config_get_string("mode");

    if (system_perms != ((void*)0)) {
 int mode;

 if (sscanf(system_perms, "%o", &mode) != 1)
     return EINVAL;

 ccache->mode = mode;
    }

    if (disallow_getting_krbtgt == -1) {
 disallow_getting_krbtgt =
     krb5_config_get_bool_default(kcm_context, ((void*)0), FALSE, "kcm",
      "disallow-getting-krbtgt", ((void*)0));
    }


    ret = kcm_ccache_enqueue_default(kcm_context, ccache, ((void*)0));

    kcm_release_ccache(kcm_context, ccache);

    return ret;
}
