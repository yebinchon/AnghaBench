
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_flags ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_creds ;
typedef int krb5_context ;
typedef int krb5_ccache ;
typedef int kcm_ccache ;


 int KCMCACHE (int ) ;
 int KCM_ASSERT_VALID (int ) ;
 scalar_t__ kcm_ccache_retrieve_cred_internal (int ,int ,int ,int const*,int **) ;
 scalar_t__ krb5_copy_creds_contents (int ,int *,int *) ;

__attribute__((used)) static krb5_error_code
kcmss_retrieve(krb5_context context,
        krb5_ccache id,
        krb5_flags which,
        const krb5_creds *mcred,
        krb5_creds *creds)
{
    krb5_error_code ret;
    kcm_ccache c = KCMCACHE(id);
    krb5_creds *credp;

    KCM_ASSERT_VALID(c);

    ret = kcm_ccache_retrieve_cred_internal(context, c, which,
         mcred, &credp);
    if (ret)
 return ret;

    ret = krb5_copy_creds_contents(context, credp, creds);
    if (ret)
 return ret;

    return 0;
}
