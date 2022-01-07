
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kcm_creds {scalar_t__ next; int cred; } ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_creds ;
typedef int krb5_context ;
typedef int krb5_ccache ;
typedef scalar_t__ krb5_cc_cursor ;
typedef int kcm_ccache ;


 int KCMCACHE (int ) ;
 int KCM_ASSERT_VALID (int ) ;
 scalar_t__ KRB5_CC_END ;
 scalar_t__ krb5_copy_creds_contents (int ,int *,int *) ;

__attribute__((used)) static krb5_error_code
kcmss_get_next (krb5_context context,
  krb5_ccache id,
  krb5_cc_cursor *cursor,
  krb5_creds *creds)
{
    krb5_error_code ret;
    kcm_ccache c = KCMCACHE(id);

    KCM_ASSERT_VALID(c);

    ret = krb5_copy_creds_contents(context,
       &((struct kcm_creds *)cursor)->cred,
       creds);
    if (ret)
 return ret;

    *cursor = ((struct kcm_creds *)cursor)->next;
    if (*cursor == 0)
 ret = KRB5_CC_END;

    return ret;
}
