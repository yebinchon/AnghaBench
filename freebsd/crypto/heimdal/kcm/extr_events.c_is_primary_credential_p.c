
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int krb5_flags ;
struct TYPE_8__ {int * client; } ;
typedef TYPE_2__ krb5_creds ;
typedef int krb5_context ;
typedef TYPE_3__* kcm_ccache ;
struct TYPE_9__ {TYPE_1__* creds; int * client; } ;
struct TYPE_7__ {int cred; } ;


 int KRB5_TC_MATCH_2ND_TKT ;
 int KRB5_TC_MATCH_AUTHDATA ;
 int KRB5_TC_MATCH_FLAGS_EXACT ;
 int KRB5_TC_MATCH_IS_SKEY ;
 int KRB5_TC_MATCH_KEYTYPE ;
 int KRB5_TC_MATCH_TIMES_EXACT ;
 int krb5_compare_creds (int ,int,TYPE_2__*,int *) ;
 int krb5_principal_compare (int ,int *,int *) ;

__attribute__((used)) static int
is_primary_credential_p(krb5_context context,
   kcm_ccache ccache,
   krb5_creds *newcred)
{
    krb5_flags whichfields;

    if (ccache->client == ((void*)0))
 return 0;

    if (newcred->client == ((void*)0) ||
 !krb5_principal_compare(context, ccache->client, newcred->client))
 return 0;


    if (ccache->creds == ((void*)0))
 return 0;

    whichfields = KRB5_TC_MATCH_KEYTYPE | KRB5_TC_MATCH_FLAGS_EXACT |
    KRB5_TC_MATCH_TIMES_EXACT | KRB5_TC_MATCH_AUTHDATA |
    KRB5_TC_MATCH_2ND_TKT | KRB5_TC_MATCH_IS_SKEY;

    return krb5_compare_creds(context, whichfields, newcred, &ccache->creds->cred);
}
