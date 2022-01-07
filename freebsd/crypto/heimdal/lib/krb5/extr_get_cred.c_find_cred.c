
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef int krb5_principal ;
typedef scalar_t__ krb5_error_code ;
struct TYPE_11__ {int server; } ;
typedef TYPE_1__ krb5_creds ;
typedef int krb5_context ;
typedef int krb5_ccache ;


 int KRB5_CC_NOTFOUND ;
 int KRB5_TC_DONT_MATCH_REALM ;
 int krb5_cc_clear_mcred (TYPE_1__*) ;
 scalar_t__ krb5_cc_retrieve_cred (int ,int ,int ,TYPE_1__*,TYPE_1__*) ;
 scalar_t__ krb5_compare_creds (int ,int ,TYPE_1__*,TYPE_1__*) ;
 scalar_t__ krb5_copy_creds_contents (int ,TYPE_1__*,TYPE_1__*) ;
 scalar_t__ not_found (int ,int ,int ) ;

__attribute__((used)) static krb5_error_code
find_cred(krb5_context context,
   krb5_ccache id,
   krb5_principal server,
   krb5_creds **tgts,
   krb5_creds *out_creds)
{
    krb5_error_code ret;
    krb5_creds mcreds;

    krb5_cc_clear_mcred(&mcreds);
    mcreds.server = server;
    ret = krb5_cc_retrieve_cred(context, id, KRB5_TC_DONT_MATCH_REALM,
    &mcreds, out_creds);
    if(ret == 0)
 return 0;
    while(tgts && *tgts){
 if(krb5_compare_creds(context, KRB5_TC_DONT_MATCH_REALM,
         &mcreds, *tgts)){
     ret = krb5_copy_creds_contents(context, *tgts, out_creds);
     return ret;
 }
 tgts++;
    }
    return not_found(context, server, KRB5_CC_NOTFOUND);
}
