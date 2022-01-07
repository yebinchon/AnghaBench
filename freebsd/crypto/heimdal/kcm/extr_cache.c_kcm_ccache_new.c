
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef int kcm_ccache ;


 scalar_t__ kcm_ccache_alloc (int ,char const*,int *) ;
 int kcm_retain_ccache (int ,int ) ;

krb5_error_code
kcm_ccache_new(krb5_context context,
        const char *name,
        kcm_ccache *ccache)
{
    krb5_error_code ret;

    ret = kcm_ccache_alloc(context, name, ccache);
    if (ret == 0) {




 kcm_retain_ccache(context, *ccache);
    }

    return ret;
}
