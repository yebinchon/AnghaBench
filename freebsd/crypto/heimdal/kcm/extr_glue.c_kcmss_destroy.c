
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_error_code ;
typedef int krb5_context ;
typedef int krb5_ccache ;
typedef int kcm_ccache ;


 int CACHENAME (int ) ;
 int KCMCACHE (int ) ;
 int KCM_ASSERT_VALID (int ) ;
 int kcm_ccache_destroy (int ,int ) ;

__attribute__((used)) static krb5_error_code
kcmss_destroy(krb5_context context,
       krb5_ccache id)
{
    krb5_error_code ret;
    kcm_ccache c = KCMCACHE(id);

    KCM_ASSERT_VALID(c);

    ret = kcm_ccache_destroy(context, CACHENAME(id));

    return ret;
}
