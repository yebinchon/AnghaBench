
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct passwd {int pw_gid; } ;
typedef int prefix ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
struct TYPE_15__ {scalar_t__ uid; scalar_t__ gid; int session; } ;
typedef TYPE_1__ kcm_client ;
typedef TYPE_2__* kcm_ccache ;
typedef int gid_t ;
struct TYPE_16__ {scalar_t__ uid; scalar_t__ gid; int session; } ;


 scalar_t__ CLIENT_IS_ROOT (TYPE_1__*) ;
 int KCM_OP_INITIALIZE ;
 scalar_t__ KRB5_CC_BADNAME ;
 scalar_t__ KRB5_FCC_NOFILE ;
 scalar_t__ KRB5_FCC_PERM ;
 struct passwd* getpwuid (unsigned long) ;
 scalar_t__ kcm_access (int ,TYPE_1__*,int ,TYPE_2__*) ;
 int kcm_ccache_destroy (int ,char const*) ;
 scalar_t__ kcm_ccache_new (int ,char const*,TYPE_2__**) ;
 scalar_t__ kcm_ccache_resolve (int ,char const*,TYPE_2__**) ;
 int kcm_chown (int ,TYPE_1__*,TYPE_2__*,unsigned long,int ) ;
 int kcm_cleanup_events (int ,TYPE_2__*) ;
 int kcm_log (int,char*,char const*,int ) ;
 int kcm_release_ccache (int ,TYPE_2__*) ;
 scalar_t__ kcm_zero_ccache_data (int ,TYPE_2__*) ;
 int krb5_get_err_text (int ,scalar_t__) ;
 scalar_t__ name_constraints ;
 int snprintf (char*,int,char*,long) ;
 int sscanf (char const*,char*,unsigned long*) ;
 scalar_t__ strcmp (char const*,char*) ;
 size_t strlen (char*) ;
 scalar_t__ strncmp (char const*,char*,size_t) ;

krb5_error_code
kcm_ccache_new_client(krb5_context context,
        kcm_client *client,
        const char *name,
        kcm_ccache *ccache_p)
{
    krb5_error_code ret;
    kcm_ccache ccache;


    if (name_constraints != 0) {
 char prefix[64];
 size_t prefix_len;
 int bad = 1;

 snprintf(prefix, sizeof(prefix), "%ld:", (long)client->uid);
 prefix_len = strlen(prefix);

 if (strncmp(name, prefix, prefix_len) == 0)
     bad = 0;
 else {
     prefix[prefix_len - 1] = '\0';
     if (strcmp(name, prefix) == 0)
  bad = 0;
 }


 if (bad && !CLIENT_IS_ROOT(client))
     return KRB5_CC_BADNAME;
    }

    ret = kcm_ccache_resolve(context, name, &ccache);
    if (ret == 0) {
 if ((ccache->uid != client->uid ||
      ccache->gid != client->gid) && !CLIENT_IS_ROOT(client))
     return KRB5_FCC_PERM;
    } else if (ret != KRB5_FCC_NOFILE && !(CLIENT_IS_ROOT(client) && ret == KRB5_FCC_PERM)) {
  return ret;
    }

    if (ret == KRB5_FCC_NOFILE) {
 ret = kcm_ccache_new(context, name, &ccache);
 if (ret) {
     kcm_log(1, "Failed to initialize cache %s: %s",
      name, krb5_get_err_text(context, ret));
     return ret;
 }


 ccache->uid = client->uid;
 ccache->gid = client->gid;
 ccache->session = client->session;
    } else {
 ret = kcm_zero_ccache_data(context, ccache);
 if (ret) {
     kcm_log(1, "Failed to empty cache %s: %s",
      name, krb5_get_err_text(context, ret));
     kcm_release_ccache(context, ccache);
     return ret;
 }
 kcm_cleanup_events(context, ccache);
    }

    ret = kcm_access(context, client, KCM_OP_INITIALIZE, ccache);
    if (ret) {
 kcm_release_ccache(context, ccache);
 kcm_ccache_destroy(context, name);
 return ret;
    }






    if (CLIENT_IS_ROOT(client)) {
 unsigned long uid;
 int matches = sscanf(name,"%ld:",&uid);
 if (matches == 0)
     matches = sscanf(name,"%ld",&uid);
 if (matches == 1) {
     struct passwd *pwd = getpwuid(uid);
     if (pwd != ((void*)0)) {
  gid_t gid = pwd->pw_gid;
  kcm_chown(context, client, ccache, uid, gid);
     }
 }
    }

    *ccache_p = ccache;
    return 0;
}
