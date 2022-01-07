
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_38__ TYPE_6__ ;
typedef struct TYPE_37__ TYPE_5__ ;
typedef struct TYPE_36__ TYPE_4__ ;
typedef struct TYPE_35__ TYPE_3__ ;
typedef struct TYPE_34__ TYPE_2__ ;
typedef struct TYPE_33__ TYPE_1__ ;


typedef int tmp_creds ;
typedef int krb5_principal ;
typedef int krb5_kdc_flags ;
typedef scalar_t__ krb5_error_code ;
struct TYPE_33__ {int ok_as_delegate; } ;
struct TYPE_34__ {TYPE_1__ b; } ;
struct TYPE_37__ {TYPE_6__* client; TYPE_6__* server; TYPE_2__ flags; } ;
typedef TYPE_5__ krb5_creds ;
typedef int krb5_context ;
typedef int krb5_const_realm ;
typedef int krb5_ccache ;
typedef int heim_general_string ;
typedef int Ticket ;
struct TYPE_35__ {int * val; } ;
struct TYPE_36__ {TYPE_3__ name_string; } ;
struct TYPE_38__ {TYPE_4__ name; } ;


 scalar_t__ ENOMEM ;
 int KRB5_CC_NOTFOUND ;
 int KRB5_TGS_NAME ;
 int N_ (char*,char*) ;
 scalar_t__ add_cred (int ,TYPE_5__*,TYPE_5__***) ;
 TYPE_5__* calloc (int,int) ;
 scalar_t__ find_cred (int ,int ,TYPE_6__*,TYPE_5__**,TYPE_5__*) ;
 int free (TYPE_5__*) ;
 scalar_t__ get_cred_kdc_address (int ,int ,int ,int *,TYPE_5__*,TYPE_5__*,int ,int *,TYPE_5__*) ;
 scalar_t__ get_cred_kdc_capath (int ,int ,int ,TYPE_5__*,int *,int *,TYPE_5__**,TYPE_5__***) ;
 scalar_t__ krb5_copy_principal (int ,TYPE_6__*,TYPE_6__**) ;
 int krb5_free_cred_contents (int ,TYPE_5__*) ;
 scalar_t__ krb5_free_creds (int ,TYPE_5__*) ;
 int krb5_free_principal (int ,TYPE_6__*) ;
 scalar_t__ krb5_make_principal (int ,TYPE_6__**,int ,int ,int ,int *) ;
 int krb5_principal_get_realm (int ,TYPE_6__*) ;
 scalar_t__ krb5_realm_compare (int ,TYPE_6__*,TYPE_6__*) ;
 int krb5_set_error_message (int ,scalar_t__,int ) ;
 int memset (TYPE_5__*,int ,int) ;
 scalar_t__ not_found (int ,TYPE_6__*,int ) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static krb5_error_code
get_cred_kdc_capath_worker(krb5_context context,
                           krb5_kdc_flags flags,
                           krb5_ccache ccache,
                           krb5_creds *in_creds,
                           krb5_const_realm try_realm,
                           krb5_principal impersonate_principal,
                           Ticket *second_ticket,
                           krb5_creds **out_creds,
                           krb5_creds ***ret_tgts)
{
    krb5_error_code ret;
    krb5_creds *tgt, tmp_creds;
    krb5_const_realm client_realm, server_realm;
    int ok_as_delegate = 1;

    *out_creds = ((void*)0);

    client_realm = krb5_principal_get_realm(context, in_creds->client);
    server_realm = krb5_principal_get_realm(context, in_creds->server);
    memset(&tmp_creds, 0, sizeof(tmp_creds));
    ret = krb5_copy_principal(context, in_creds->client, &tmp_creds.client);
    if(ret)
 return ret;

    ret = krb5_make_principal(context,
         &tmp_creds.server,
         try_realm,
         KRB5_TGS_NAME,
         server_realm,
         ((void*)0));
    if(ret){
 krb5_free_principal(context, tmp_creds.client);
 return ret;
    }
    {
 krb5_creds tgts;

 ret = find_cred(context, ccache, tmp_creds.server,
   *ret_tgts, &tgts);
 if(ret == 0){

     if (strcmp(try_realm, client_realm) != 0 || strcmp(try_realm, server_realm) != 0)
  ok_as_delegate = tgts.flags.b.ok_as_delegate;

     *out_creds = calloc(1, sizeof(**out_creds));
     if(*out_creds == ((void*)0)) {
  ret = ENOMEM;
  krb5_set_error_message(context, ret,
           N_("malloc: out of memory", ""));
     } else {
  ret = get_cred_kdc_address(context, ccache, flags, ((void*)0),
        in_creds, &tgts,
        impersonate_principal,
        second_ticket,
        *out_creds);
  if (ret) {
      free (*out_creds);
      *out_creds = ((void*)0);
  } else if (ok_as_delegate == 0)
      (*out_creds)->flags.b.ok_as_delegate = 0;
     }
     krb5_free_cred_contents(context, &tgts);
     krb5_free_principal(context, tmp_creds.server);
     krb5_free_principal(context, tmp_creds.client);
     return ret;
 }
    }
    if(krb5_realm_compare(context, in_creds->client, in_creds->server))
 return not_found(context, in_creds->server, KRB5_CC_NOTFOUND);


    while(1){
 heim_general_string tgt_inst;

 ret = get_cred_kdc_capath(context, flags, ccache, &tmp_creds,
      ((void*)0), ((void*)0), &tgt, ret_tgts);
 if(ret) {
     krb5_free_principal(context, tmp_creds.server);
     krb5_free_principal(context, tmp_creds.client);
     return ret;
 }




 if (ok_as_delegate == 0 || tgt->flags.b.ok_as_delegate == 0) {
     ok_as_delegate = 0;
     tgt->flags.b.ok_as_delegate = 0;
 }

 ret = add_cred(context, tgt, ret_tgts);
 if(ret) {
     krb5_free_principal(context, tmp_creds.server);
     krb5_free_principal(context, tmp_creds.client);
     return ret;
 }
 tgt_inst = tgt->server->name.name_string.val[1];
 if(strcmp(tgt_inst, server_realm) == 0)
     break;
 krb5_free_principal(context, tmp_creds.server);
 tmp_creds.server = ((void*)0);
 ret = krb5_make_principal(context, &tmp_creds.server,
      tgt_inst, KRB5_TGS_NAME, server_realm, ((void*)0));
 if(ret) {
     krb5_free_principal(context, tmp_creds.server);
     krb5_free_principal(context, tmp_creds.client);
     return ret;
 }
 ret = krb5_free_creds(context, tgt);
 if(ret) {
     krb5_free_principal(context, tmp_creds.server);
     krb5_free_principal(context, tmp_creds.client);
     return ret;
 }
    }

    krb5_free_principal(context, tmp_creds.server);
    krb5_free_principal(context, tmp_creds.client);
    *out_creds = calloc(1, sizeof(**out_creds));
    if(*out_creds == ((void*)0)) {
 ret = ENOMEM;
 krb5_set_error_message(context, ret, N_("malloc: out of memory", ""));
    } else {
 ret = get_cred_kdc_address (context, ccache, flags, ((void*)0),
        in_creds, tgt, impersonate_principal,
        second_ticket, *out_creds);
 if (ret) {
     free (*out_creds);
     *out_creds = ((void*)0);
 }
    }
    krb5_free_creds(context, tgt);
    return ret;
}
