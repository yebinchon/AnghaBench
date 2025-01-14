
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_16__ ;


typedef scalar_t__ krb5_error_code ;
typedef int krb5_enctype ;
struct TYPE_18__ {scalar_t__ renew_till; scalar_t__ endtime; scalar_t__ starttime; } ;
struct TYPE_21__ {TYPE_1__ times; TYPE_16__* server; TYPE_16__* client; } ;
typedef TYPE_4__ krb5_creds ;
typedef int krb5_context ;
struct TYPE_22__ {scalar_t__ len; } ;
typedef TYPE_5__ krb5_addresses ;
struct TYPE_24__ {scalar_t__ len; } ;
struct TYPE_19__ {int val; int len; } ;
struct TYPE_20__ {int * additional_tickets; int * enc_authorization_data; TYPE_8__* addresses; TYPE_2__ etype; scalar_t__ nonce; scalar_t__* rtime; scalar_t__* till; scalar_t__* from; int * sname; int realm; int * cname; int kdc_options; } ;
struct TYPE_23__ {int pvno; int * padata; TYPE_3__ req_body; int msg_type; } ;
struct TYPE_17__ {int realm; } ;
typedef int KDCOptions ;
typedef TYPE_6__ AS_REQ ;


 int ALLOC (scalar_t__*,int) ;
 scalar_t__ ENOMEM ;
 int KRB5_PDU_AS_REQUEST ;
 int N_ (char*,char*) ;
 scalar_t__ _krb5_init_etype (int ,int ,int *,int *,int const*) ;
 scalar_t__ _krb5_principal2principalname (int *,TYPE_16__*) ;
 scalar_t__ copy_Realm (int *,int *) ;
 int free (TYPE_8__*) ;
 int free_AS_REQ (TYPE_6__*) ;
 scalar_t__ krb5_copy_addresses (int ,TYPE_5__ const*,TYPE_8__*) ;
 scalar_t__ krb5_get_all_client_addrs (int ,TYPE_8__*) ;
 int krb5_set_error_message (int ,scalar_t__,int ) ;
 int krb_as_req ;
 void* malloc (int) ;
 int memset (TYPE_6__*,int ,int) ;

__attribute__((used)) static krb5_error_code
init_as_req (krb5_context context,
      KDCOptions opts,
      const krb5_creds *creds,
      const krb5_addresses *addrs,
      const krb5_enctype *etypes,
      AS_REQ *a)
{
    krb5_error_code ret;

    memset(a, 0, sizeof(*a));

    a->pvno = 5;
    a->msg_type = krb_as_req;
    a->req_body.kdc_options = opts;
    a->req_body.cname = malloc(sizeof(*a->req_body.cname));
    if (a->req_body.cname == ((void*)0)) {
 ret = ENOMEM;
 krb5_set_error_message(context, ret, N_("malloc: out of memory", ""));
 goto fail;
    }
    a->req_body.sname = malloc(sizeof(*a->req_body.sname));
    if (a->req_body.sname == ((void*)0)) {
 ret = ENOMEM;
 krb5_set_error_message(context, ret, N_("malloc: out of memory", ""));
 goto fail;
    }

    ret = _krb5_principal2principalname (a->req_body.cname, creds->client);
    if (ret)
 goto fail;
    ret = copy_Realm(&creds->client->realm, &a->req_body.realm);
    if (ret)
 goto fail;

    ret = _krb5_principal2principalname (a->req_body.sname, creds->server);
    if (ret)
 goto fail;

    if(creds->times.starttime) {
 a->req_body.from = malloc(sizeof(*a->req_body.from));
 if (a->req_body.from == ((void*)0)) {
     ret = ENOMEM;
     krb5_set_error_message(context, ret, N_("malloc: out of memory", ""));
     goto fail;
 }
 *a->req_body.from = creds->times.starttime;
    }
    if(creds->times.endtime){
 ALLOC(a->req_body.till, 1);
 *a->req_body.till = creds->times.endtime;
    }
    if(creds->times.renew_till){
 a->req_body.rtime = malloc(sizeof(*a->req_body.rtime));
 if (a->req_body.rtime == ((void*)0)) {
     ret = ENOMEM;
     krb5_set_error_message(context, ret, N_("malloc: out of memory", ""));
     goto fail;
 }
 *a->req_body.rtime = creds->times.renew_till;
    }
    a->req_body.nonce = 0;
    ret = _krb5_init_etype(context,
      KRB5_PDU_AS_REQUEST,
      &a->req_body.etype.len,
      &a->req_body.etype.val,
      etypes);
    if (ret)
 goto fail;





    if (addrs && addrs->len == 0) {
 a->req_body.addresses = ((void*)0);
    } else {
 a->req_body.addresses = malloc(sizeof(*a->req_body.addresses));
 if (a->req_body.addresses == ((void*)0)) {
     ret = ENOMEM;
     krb5_set_error_message(context, ret, N_("malloc: out of memory", ""));
     goto fail;
 }

 if (addrs)
     ret = krb5_copy_addresses(context, addrs, a->req_body.addresses);
 else {
     ret = krb5_get_all_client_addrs (context, a->req_body.addresses);
     if(ret == 0 && a->req_body.addresses->len == 0) {
  free(a->req_body.addresses);
  a->req_body.addresses = ((void*)0);
     }
 }
 if (ret)
     goto fail;
    }

    a->req_body.enc_authorization_data = ((void*)0);
    a->req_body.additional_tickets = ((void*)0);

    a->padata = ((void*)0);

    return 0;
 fail:
    free_AS_REQ(a);
    memset(a, 0, sizeof(*a));
    return ret;
}
