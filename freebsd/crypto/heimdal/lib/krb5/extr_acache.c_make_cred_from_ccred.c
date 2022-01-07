
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_36__ TYPE_9__ ;
typedef struct TYPE_35__ TYPE_8__ ;
typedef struct TYPE_34__ TYPE_7__ ;
typedef struct TYPE_33__ TYPE_6__ ;
typedef struct TYPE_32__ TYPE_5__ ;
typedef struct TYPE_31__ TYPE_4__ ;
typedef struct TYPE_30__ TYPE_3__ ;
typedef struct TYPE_29__ TYPE_2__ ;
typedef struct TYPE_28__ TYPE_1__ ;
typedef struct TYPE_27__ TYPE_16__ ;
typedef struct TYPE_26__ TYPE_15__ ;
typedef struct TYPE_25__ TYPE_14__ ;
typedef struct TYPE_24__ TYPE_13__ ;
typedef struct TYPE_23__ TYPE_12__ ;
typedef struct TYPE_22__ TYPE_11__ ;
typedef struct TYPE_21__ TYPE_10__ ;


typedef scalar_t__ krb5_error_code ;
struct TYPE_29__ {int forwardable; int forwarded; int proxiable; int proxy; int may_postdate; int postdated; int invalid; int renewable; int initial; int pre_authent; int hw_authent; int transited_policy_checked; int ok_as_delegate; int anonymous; } ;
struct TYPE_30__ {TYPE_2__ b; int i; } ;
struct TYPE_22__ {unsigned int len; TYPE_10__* val; } ;
struct TYPE_24__ {unsigned int len; TYPE_14__* val; } ;
struct TYPE_34__ {int renew_till; int endtime; int starttime; int authtime; } ;
struct TYPE_31__ {int * data; int length; } ;
struct TYPE_32__ {TYPE_4__ keyvalue; int keytype; } ;
struct TYPE_26__ {TYPE_3__ flags; TYPE_11__ addresses; TYPE_13__ authdata; int second_ticket; int ticket; TYPE_7__ times; TYPE_5__ session; int server; int client; } ;
typedef TYPE_15__ krb5_creds ;
typedef int krb5_context ;
struct TYPE_36__ {int length; int data; } ;
struct TYPE_35__ {int length; int data; } ;
struct TYPE_33__ {int length; int data; int type; } ;
struct TYPE_27__ {int ticket_flags; TYPE_1__** addresses; TYPE_12__** authdata; TYPE_9__ second_ticket; TYPE_8__ ticket; int renew_till; int endtime; int starttime; int authtime; TYPE_6__ keyblock; int server; int client; } ;
typedef TYPE_16__ cc_credentials_v5_t ;
struct TYPE_28__ {int length; int data; int type; } ;
struct TYPE_25__ {int ad_data; int ad_type; } ;
struct TYPE_23__ {int length; int data; int type; } ;
struct TYPE_21__ {int address; int addr_type; } ;


 scalar_t__ ENOMEM ;
 int KRB5_CCAPI_TKT_FLG_ANONYMOUS ;
 int KRB5_CCAPI_TKT_FLG_FORWARDABLE ;
 int KRB5_CCAPI_TKT_FLG_FORWARDED ;
 int KRB5_CCAPI_TKT_FLG_HW_AUTH ;
 int KRB5_CCAPI_TKT_FLG_INITIAL ;
 int KRB5_CCAPI_TKT_FLG_INVALID ;
 int KRB5_CCAPI_TKT_FLG_MAY_POSTDATE ;
 int KRB5_CCAPI_TKT_FLG_OK_AS_DELEGATE ;
 int KRB5_CCAPI_TKT_FLG_POSTDATED ;
 int KRB5_CCAPI_TKT_FLG_PRE_AUTH ;
 int KRB5_CCAPI_TKT_FLG_PROXIABLE ;
 int KRB5_CCAPI_TKT_FLG_PROXY ;
 int KRB5_CCAPI_TKT_FLG_RENEWABLE ;
 int KRB5_CCAPI_TKT_FLG_TRANSIT_POLICY_CHECKED ;
 int N_ (char*,char*) ;
 void* calloc (unsigned int,int) ;
 scalar_t__ krb5_data_copy (int *,int ,int ) ;
 int krb5_free_cred_contents (int ,TYPE_15__*) ;
 scalar_t__ krb5_parse_name (int ,int ,int *) ;
 int krb5_set_error_message (int ,scalar_t__,int ) ;
 int * malloc (int ) ;
 int memcpy (int *,int ,int ) ;
 int memset (TYPE_15__*,int ,int) ;

__attribute__((used)) static krb5_error_code
make_cred_from_ccred(krb5_context context,
       const cc_credentials_v5_t *incred,
       krb5_creds *cred)
{
    krb5_error_code ret;
    unsigned int i;

    memset(cred, 0, sizeof(*cred));

    ret = krb5_parse_name(context, incred->client, &cred->client);
    if (ret)
 goto fail;

    ret = krb5_parse_name(context, incred->server, &cred->server);
    if (ret)
 goto fail;

    cred->session.keytype = incred->keyblock.type;
    cred->session.keyvalue.length = incred->keyblock.length;
    cred->session.keyvalue.data = malloc(incred->keyblock.length);
    if (cred->session.keyvalue.data == ((void*)0))
 goto nomem;
    memcpy(cred->session.keyvalue.data, incred->keyblock.data,
    incred->keyblock.length);

    cred->times.authtime = incred->authtime;
    cred->times.starttime = incred->starttime;
    cred->times.endtime = incred->endtime;
    cred->times.renew_till = incred->renew_till;

    ret = krb5_data_copy(&cred->ticket,
    incred->ticket.data,
    incred->ticket.length);
    if (ret)
 goto nomem;

    ret = krb5_data_copy(&cred->second_ticket,
    incred->second_ticket.data,
    incred->second_ticket.length);
    if (ret)
 goto nomem;

    cred->authdata.val = ((void*)0);
    cred->authdata.len = 0;

    cred->addresses.val = ((void*)0);
    cred->addresses.len = 0;

    for (i = 0; incred->authdata && incred->authdata[i]; i++)
 ;

    if (i) {
 cred->authdata.val = calloc(i, sizeof(cred->authdata.val[0]));
 if (cred->authdata.val == ((void*)0))
     goto nomem;
 cred->authdata.len = i;
 for (i = 0; i < cred->authdata.len; i++) {
     cred->authdata.val[i].ad_type = incred->authdata[i]->type;
     ret = krb5_data_copy(&cred->authdata.val[i].ad_data,
     incred->authdata[i]->data,
     incred->authdata[i]->length);
     if (ret)
  goto nomem;
 }
    }

    for (i = 0; incred->addresses && incred->addresses[i]; i++)
 ;

    if (i) {
 cred->addresses.val = calloc(i, sizeof(cred->addresses.val[0]));
 if (cred->addresses.val == ((void*)0))
     goto nomem;
 cred->addresses.len = i;

 for (i = 0; i < cred->addresses.len; i++) {
     cred->addresses.val[i].addr_type = incred->addresses[i]->type;
     ret = krb5_data_copy(&cred->addresses.val[i].address,
     incred->addresses[i]->data,
     incred->addresses[i]->length);
     if (ret)
  goto nomem;
 }
    }

    cred->flags.i = 0;
    if (incred->ticket_flags & KRB5_CCAPI_TKT_FLG_FORWARDABLE)
 cred->flags.b.forwardable = 1;
    if (incred->ticket_flags & KRB5_CCAPI_TKT_FLG_FORWARDED)
 cred->flags.b.forwarded = 1;
    if (incred->ticket_flags & KRB5_CCAPI_TKT_FLG_PROXIABLE)
 cred->flags.b.proxiable = 1;
    if (incred->ticket_flags & KRB5_CCAPI_TKT_FLG_PROXY)
 cred->flags.b.proxy = 1;
    if (incred->ticket_flags & KRB5_CCAPI_TKT_FLG_MAY_POSTDATE)
 cred->flags.b.may_postdate = 1;
    if (incred->ticket_flags & KRB5_CCAPI_TKT_FLG_POSTDATED)
 cred->flags.b.postdated = 1;
    if (incred->ticket_flags & KRB5_CCAPI_TKT_FLG_INVALID)
 cred->flags.b.invalid = 1;
    if (incred->ticket_flags & KRB5_CCAPI_TKT_FLG_RENEWABLE)
 cred->flags.b.renewable = 1;
    if (incred->ticket_flags & KRB5_CCAPI_TKT_FLG_INITIAL)
 cred->flags.b.initial = 1;
    if (incred->ticket_flags & KRB5_CCAPI_TKT_FLG_PRE_AUTH)
 cred->flags.b.pre_authent = 1;
    if (incred->ticket_flags & KRB5_CCAPI_TKT_FLG_HW_AUTH)
 cred->flags.b.hw_authent = 1;
    if (incred->ticket_flags & KRB5_CCAPI_TKT_FLG_TRANSIT_POLICY_CHECKED)
 cred->flags.b.transited_policy_checked = 1;
    if (incred->ticket_flags & KRB5_CCAPI_TKT_FLG_OK_AS_DELEGATE)
 cred->flags.b.ok_as_delegate = 1;
    if (incred->ticket_flags & KRB5_CCAPI_TKT_FLG_ANONYMOUS)
 cred->flags.b.anonymous = 1;

    return 0;

nomem:
    ret = ENOMEM;
    krb5_set_error_message(context, ret, N_("malloc: out of memory", "malloc"));

fail:
    krb5_free_cred_contents(context, cred);
    return ret;
}
