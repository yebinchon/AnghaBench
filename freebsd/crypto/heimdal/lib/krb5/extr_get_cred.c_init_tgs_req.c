
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_36__ TYPE_8__ ;
typedef struct TYPE_35__ TYPE_7__ ;
typedef struct TYPE_34__ TYPE_6__ ;
typedef struct TYPE_33__ TYPE_5__ ;
typedef struct TYPE_32__ TYPE_4__ ;
typedef struct TYPE_31__ TYPE_3__ ;
typedef struct TYPE_30__ TYPE_2__ ;
typedef struct TYPE_29__ TYPE_24__ ;
typedef struct TYPE_28__ TYPE_1__ ;
typedef struct TYPE_27__ TYPE_16__ ;


typedef int krb5_keyblock ;
struct TYPE_31__ {int b; } ;
typedef TYPE_3__ krb5_kdc_flags ;
typedef scalar_t__ krb5_error_code ;
struct TYPE_27__ {scalar_t__ keytype; } ;
struct TYPE_29__ {scalar_t__* val; int len; } ;
struct TYPE_30__ {TYPE_24__ endtime; } ;
struct TYPE_32__ {int authdata; TYPE_16__ session; TYPE_2__ times; TYPE_1__* server; } ;
typedef TYPE_4__ krb5_creds ;
typedef int krb5_context ;
typedef int krb5_ccache ;
typedef TYPE_5__* krb5_auth_context ;
typedef int krb5_addresses ;
typedef int Ticket ;
struct TYPE_36__ {unsigned int nonce; int * addresses; TYPE_24__* additional_tickets; TYPE_24__* till; TYPE_24__* sname; int realm; int kdc_options; TYPE_24__ etype; } ;
struct TYPE_35__ {int len; int * val; } ;
struct TYPE_34__ {int pvno; TYPE_8__ req_body; TYPE_24__* padata; int msg_type; } ;
struct TYPE_33__ {int local_subkey; } ;
struct TYPE_28__ {int name; int realm; } ;
typedef TYPE_6__ TGS_REQ ;
typedef TYPE_7__ METHOD_DATA ;


 int ALLOC (TYPE_24__*,int) ;
 int ALLOC_SEQ (TYPE_24__*,int) ;
 scalar_t__ ENOMEM ;
 int KRB5_PDU_TGS_REQUEST ;
 int N_ (char*,char*) ;
 scalar_t__ _krb5_init_etype (int ,int ,int *,scalar_t__**,int *) ;
 scalar_t__ copy_PA_DATA (int *,scalar_t__*) ;
 scalar_t__ copy_PrincipalName (int *,TYPE_24__*) ;
 scalar_t__ copy_Realm (int *,int *) ;
 scalar_t__ copy_Ticket (int *,scalar_t__*) ;
 int free_TGS_REQ (TYPE_6__*) ;
 int krb5_auth_con_free (int ,TYPE_5__*) ;
 scalar_t__ krb5_auth_con_generatelocalsubkey (int ,TYPE_5__*,TYPE_16__*) ;
 scalar_t__ krb5_auth_con_getlocalsubkey (int ,TYPE_5__*,int **) ;
 scalar_t__ krb5_auth_con_init (int ,TYPE_5__**) ;
 int krb5_set_error_message (int ,scalar_t__,int ) ;
 int krb_tgs_req ;
 scalar_t__ make_pa_tgs_req (int ,TYPE_5__*,TYPE_8__*,scalar_t__*,TYPE_4__*) ;
 int memset (TYPE_6__*,int ,int) ;
 scalar_t__ set_auth_data (int ,TYPE_8__*,int *,int ) ;

__attribute__((used)) static krb5_error_code
init_tgs_req (krb5_context context,
       krb5_ccache ccache,
       krb5_addresses *addresses,
       krb5_kdc_flags flags,
       Ticket *second_ticket,
       krb5_creds *in_creds,
       krb5_creds *krbtgt,
       unsigned nonce,
       const METHOD_DATA *padata,
       krb5_keyblock **subkey,
       TGS_REQ *t)
{
    krb5_auth_context ac = ((void*)0);
    krb5_error_code ret = 0;

    memset(t, 0, sizeof(*t));
    t->pvno = 5;
    t->msg_type = krb_tgs_req;
    if (in_creds->session.keytype) {
 ALLOC_SEQ(&t->req_body.etype, 1);
 if(t->req_body.etype.val == ((void*)0)) {
     ret = ENOMEM;
     krb5_set_error_message(context, ret,
       N_("malloc: out of memory", ""));
     goto fail;
 }
 t->req_body.etype.val[0] = in_creds->session.keytype;
    } else {
 ret = _krb5_init_etype(context,
          KRB5_PDU_TGS_REQUEST,
          &t->req_body.etype.len,
          &t->req_body.etype.val,
          ((void*)0));
    }
    if (ret)
 goto fail;
    t->req_body.addresses = addresses;
    t->req_body.kdc_options = flags.b;
    ret = copy_Realm(&in_creds->server->realm, &t->req_body.realm);
    if (ret)
 goto fail;
    ALLOC(t->req_body.sname, 1);
    if (t->req_body.sname == ((void*)0)) {
 ret = ENOMEM;
 krb5_set_error_message(context, ret, N_("malloc: out of memory", ""));
 goto fail;
    }




    ret = copy_PrincipalName(&in_creds->server->name, t->req_body.sname);
    if (ret)
 goto fail;



    ALLOC(t->req_body.till, 1);
    if(t->req_body.till == ((void*)0)){
 ret = ENOMEM;
 krb5_set_error_message(context, ret, N_("malloc: out of memory", ""));
 goto fail;
    }
    *t->req_body.till = in_creds->times.endtime;

    t->req_body.nonce = nonce;
    if(second_ticket){
 ALLOC(t->req_body.additional_tickets, 1);
 if (t->req_body.additional_tickets == ((void*)0)) {
     ret = ENOMEM;
     krb5_set_error_message(context, ret,
       N_("malloc: out of memory", ""));
     goto fail;
 }
 ALLOC_SEQ(t->req_body.additional_tickets, 1);
 if (t->req_body.additional_tickets->val == ((void*)0)) {
     ret = ENOMEM;
     krb5_set_error_message(context, ret,
       N_("malloc: out of memory", ""));
     goto fail;
 }
 ret = copy_Ticket(second_ticket, t->req_body.additional_tickets->val);
 if (ret)
     goto fail;
    }
    ALLOC(t->padata, 1);
    if (t->padata == ((void*)0)) {
 ret = ENOMEM;
 krb5_set_error_message(context, ret, N_("malloc: out of memory", ""));
 goto fail;
    }
    ALLOC_SEQ(t->padata, 1 + padata->len);
    if (t->padata->val == ((void*)0)) {
 ret = ENOMEM;
 krb5_set_error_message(context, ret, N_("malloc: out of memory", ""));
 goto fail;
    }
    {
 size_t i;
 for (i = 0; i < padata->len; i++) {
     ret = copy_PA_DATA(&padata->val[i], &t->padata->val[i + 1]);
     if (ret) {
  krb5_set_error_message(context, ret,
           N_("malloc: out of memory", ""));
  goto fail;
     }
 }
    }

    ret = krb5_auth_con_init(context, &ac);
    if(ret)
 goto fail;

    ret = krb5_auth_con_generatelocalsubkey(context, ac, &krbtgt->session);
    if (ret)
 goto fail;

    ret = set_auth_data (context, &t->req_body, &in_creds->authdata,
    ac->local_subkey);
    if (ret)
 goto fail;

    ret = make_pa_tgs_req(context,
     ac,
     &t->req_body,
     &t->padata->val[0],
     krbtgt);
    if(ret)
 goto fail;

    ret = krb5_auth_con_getlocalsubkey(context, ac, subkey);
    if (ret)
 goto fail;

fail:
    if (ac)
 krb5_auth_con_free(context, ac);
    if (ret) {
 t->req_body.addresses = ((void*)0);
 free_TGS_REQ (t);
    }
    return ret;
}
