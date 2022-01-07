
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef int kcm_client ;
typedef int kcm_ccache ;


 int KCM_OP_DESTROY ;
 scalar_t__ kcm_access (int ,int *,int ,int ) ;
 scalar_t__ kcm_ccache_destroy (int ,char const*) ;
 scalar_t__ kcm_ccache_resolve (int ,char const*,int *) ;
 int kcm_cleanup_events (int ,int ) ;
 int kcm_log (int,char*,char const*,int ) ;
 int kcm_release_ccache (int ,int ) ;
 int krb5_get_err_text (int ,scalar_t__) ;

krb5_error_code
kcm_ccache_destroy_client(krb5_context context,
     kcm_client *client,
     const char *name)
{
    krb5_error_code ret;
    kcm_ccache ccache;

    ret = kcm_ccache_resolve(context, name, &ccache);
    if (ret) {
 kcm_log(1, "Failed to resolve cache %s: %s",
  name, krb5_get_err_text(context, ret));
 return ret;
    }

    ret = kcm_access(context, client, KCM_OP_DESTROY, ccache);
    kcm_cleanup_events(context, ccache);
    kcm_release_ccache(context, ccache);
    if (ret)
 return ret;

    return kcm_ccache_destroy(context, name);
}
