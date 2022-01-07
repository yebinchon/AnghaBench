
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int krb5_error_code ;
typedef int krb5_context ;
typedef int krb5_ccache ;
typedef int * krb5_cc_cursor ;
typedef TYPE_1__* kcm_ccache ;
struct TYPE_4__ {int * creds; } ;


 TYPE_1__* KCMCACHE (int ) ;
 int KCM_ASSERT_VALID (TYPE_1__*) ;
 int KRB5_CC_END ;

__attribute__((used)) static krb5_error_code
kcmss_get_first (krb5_context context,
   krb5_ccache id,
   krb5_cc_cursor *cursor)
{
    kcm_ccache c = KCMCACHE(id);

    KCM_ASSERT_VALID(c);

    *cursor = c->creds;

    return (*cursor == ((void*)0)) ? KRB5_CC_END : 0;
}
