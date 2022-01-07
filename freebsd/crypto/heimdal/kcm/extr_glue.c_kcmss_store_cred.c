
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_error_code ;
typedef int krb5_creds ;
typedef int krb5_context ;
typedef int krb5_ccache ;
typedef int kcm_ccache ;


 int KCMCACHE (int ) ;
 int KCM_ASSERT_VALID (int ) ;
 int kcm_ccache_store_cred_internal (int ,int ,int *,int,int **) ;

__attribute__((used)) static krb5_error_code
kcmss_store_cred(krb5_context context,
   krb5_ccache id,
   krb5_creds *creds)
{
    krb5_error_code ret;
    kcm_ccache c = KCMCACHE(id);
    krb5_creds *tmp;

    KCM_ASSERT_VALID(c);

    ret = kcm_ccache_store_cred_internal(context, c, creds, 1, &tmp);

    return ret;
}
