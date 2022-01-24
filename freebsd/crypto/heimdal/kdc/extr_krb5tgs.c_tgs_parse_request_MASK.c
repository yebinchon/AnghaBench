#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_41__   TYPE_9__ ;
typedef  struct TYPE_40__   TYPE_8__ ;
typedef  struct TYPE_39__   TYPE_7__ ;
typedef  struct TYPE_38__   TYPE_6__ ;
typedef  struct TYPE_37__   TYPE_5__ ;
typedef  struct TYPE_36__   TYPE_4__ ;
typedef  struct TYPE_35__   TYPE_3__ ;
typedef  struct TYPE_34__   TYPE_2__ ;
typedef  struct TYPE_33__   TYPE_25__ ;
typedef  struct TYPE_32__   TYPE_1__ ;
typedef  struct TYPE_31__   TYPE_12__ ;
typedef  struct TYPE_30__   TYPE_11__ ;
typedef  struct TYPE_29__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  time_t ;
struct sockaddr {int dummy; } ;
struct TYPE_34__ {int /*<<< orphan*/  key; } ;
struct TYPE_37__ {TYPE_2__ ticket; } ;
typedef  TYPE_5__ krb5_ticket ;
typedef  int /*<<< orphan*/  krb5_principal ;
typedef  int /*<<< orphan*/  krb5_keyblock ;
typedef  int /*<<< orphan*/  krb5_kdc_configuration ;
typedef  scalar_t__ krb5_flags ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_enctype ;
struct TYPE_38__ {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
typedef  TYPE_6__ krb5_data ;
typedef  int /*<<< orphan*/  krb5_crypto ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  TYPE_7__* krb5_authenticator ;
typedef  int /*<<< orphan*/ * krb5_auth_context ;
struct TYPE_35__ {int /*<<< orphan*/  etype; int /*<<< orphan*/ * kvno; } ;
struct TYPE_36__ {TYPE_3__ enc_part; int /*<<< orphan*/  realm; int /*<<< orphan*/  sname; } ;
struct TYPE_40__ {TYPE_4__ ticket; } ;
typedef  TYPE_8__ krb5_ap_req ;
struct TYPE_33__ {int /*<<< orphan*/  kvno; } ;
struct TYPE_41__ {TYPE_25__ entry; } ;
typedef  TYPE_9__ hdb_entry_ex ;
typedef  int /*<<< orphan*/  ap_req ;
struct TYPE_39__ {int cusec; int /*<<< orphan*/  ctime; } ;
struct TYPE_32__ {scalar_t__ validate; } ;
struct TYPE_31__ {int /*<<< orphan*/  enc_authorization_data; TYPE_1__ kdc_options; } ;
struct TYPE_30__ {int /*<<< orphan*/  key; } ;
struct TYPE_29__ {int /*<<< orphan*/  padata_value; } ;
typedef  TYPE_10__ PA_DATA ;
typedef  TYPE_11__ Key ;
typedef  TYPE_12__ KDC_REQ_BODY ;
typedef  char AuthorizationData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ HDB_ERR_NOT_FOUND_HERE ; 
 int /*<<< orphan*/  HDB_F_GET_KRBTGT ; 
 scalar_t__ KRB5KDC_ERR_POLICY ; 
 scalar_t__ KRB5KRB_AP_ERR_BADKEYVER ; 
 scalar_t__ KRB5KRB_AP_ERR_BAD_INTEGRITY ; 
 scalar_t__ KRB5KRB_AP_ERR_NOT_US ; 
 int /*<<< orphan*/  KRB5_KU_TGS_REQ_AUTH ; 
 unsigned int KRB5_KU_TGS_REQ_AUTH_DAT_SESSION ; 
 unsigned int KRB5_KU_TGS_REQ_AUTH_DAT_SUBKEY ; 
 scalar_t__ KRB5_VERIFY_AP_REQ_IGNORE_INVALID ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_9__**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,TYPE_25__*,int /*<<< orphan*/ ,TYPE_11__**) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_7__**) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_8__*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,TYPE_7__**) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC21 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,scalar_t__*,TYPE_5__**,int /*<<< orphan*/ ) ; 
 void* FUNC24 (int) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_8__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_12__*,char const**,int /*<<< orphan*/ *) ; 

__attribute__((used)) static krb5_error_code
FUNC27(krb5_context context,
		  krb5_kdc_configuration *config,
		  KDC_REQ_BODY *b,
		  const PA_DATA *tgs_req,
		  hdb_entry_ex **krbtgt,
		  krb5_enctype *krbtgt_etype,
		  krb5_ticket **ticket,
		  const char **e_text,
		  const char *from,
		  const struct sockaddr *from_addr,
		  time_t **csec,
		  int **cusec,
		  AuthorizationData **auth_data,
		  krb5_keyblock **replykey,
		  int *rk_is_subkey)
{
    static char failed[] = "<unparse_name failed>";
    krb5_ap_req ap_req;
    krb5_error_code ret;
    krb5_principal princ;
    krb5_auth_context ac = NULL;
    krb5_flags ap_req_options;
    krb5_flags verify_ap_req_flags;
    krb5_crypto crypto;
    Key *tkey;
    krb5_keyblock *subkey = NULL;
    unsigned usage;

    *auth_data = NULL;
    *csec  = NULL;
    *cusec = NULL;
    *replykey = NULL;

    FUNC25(&ap_req, 0, sizeof(ap_req));
    ret = FUNC15(context, &tgs_req->padata_value, &ap_req);
    if(ret){
	const char *msg = FUNC21(context, ret);
	FUNC8(context, config, 0, "Failed to decode AP-REQ: %s", msg);
	FUNC19(context, msg);
	goto out;
    }

    if(!FUNC6(&ap_req.ticket.sname)){
	/* XXX check for ticket.sname == req.sname */
	FUNC8(context, config, 0, "PA-DATA is not a ticket-granting ticket");
	ret = KRB5KDC_ERR_POLICY; /* ? */
	goto out;
    }

    FUNC2(context,
				       &princ,
				       ap_req.ticket.sname,
				       ap_req.ticket.realm);

    ret = FUNC1(context, config, princ, HDB_F_GET_KRBTGT, ap_req.ticket.enc_part.kvno, NULL, krbtgt);

    if(ret == HDB_ERR_NOT_FOUND_HERE) {
	char *p;
	ret = FUNC22(context, princ, &p);
	if (ret != 0)
	    p = failed;
	FUNC20(context, princ);
	FUNC8(context, config, 5, "Ticket-granting ticket account %s does not have secrets at this KDC, need to proxy", p);
	if (ret == 0)
	    FUNC4(p);
	ret = HDB_ERR_NOT_FOUND_HERE;
	goto out;
    } else if(ret){
	const char *msg = FUNC21(context, ret);
	char *p;
	ret = FUNC22(context, princ, &p);
	if (ret != 0)
	    p = failed;
	FUNC20(context, princ);
	FUNC8(context, config, 0,
		"Ticket-granting ticket not found in database: %s", msg);
	FUNC19(context, msg);
	if (ret == 0)
	    FUNC4(p);
	ret = KRB5KRB_AP_ERR_NOT_US;
	goto out;
    }

    if(ap_req.ticket.enc_part.kvno &&
       *ap_req.ticket.enc_part.kvno != (*krbtgt)->entry.kvno){
	char *p;

	ret = FUNC22 (context, princ, &p);
	FUNC20(context, princ);
	if (ret != 0)
	    p = failed;
	FUNC8(context, config, 0,
		"Ticket kvno = %d, DB kvno = %d (%s)",
		*ap_req.ticket.enc_part.kvno,
		(*krbtgt)->entry.kvno,
		p);
	if (ret == 0)
	    FUNC4 (p);
	ret = KRB5KRB_AP_ERR_BADKEYVER;
	goto out;
    }

    *krbtgt_etype = ap_req.ticket.enc_part.etype;

    ret = FUNC7(context, &(*krbtgt)->entry,
			  ap_req.ticket.enc_part.etype, &tkey);
    if(ret){
	char *str = NULL, *p = NULL;

	FUNC17(context, ap_req.ticket.enc_part.etype, &str);
	FUNC22(context, princ, &p);
 	FUNC8(context, config, 0,
		"No server key with enctype %s found for %s",
		str ? str : "<unknown enctype>",
		p ? p : "<unparse_name failed>");
	FUNC4(str);
	FUNC4(p);
	ret = KRB5KRB_AP_ERR_BADKEYVER;
	goto out;
    }

    if (b->kdc_options.validate)
	verify_ap_req_flags = KRB5_VERIFY_AP_REQ_IGNORE_INVALID;
    else
	verify_ap_req_flags = 0;

    ret = FUNC23(context,
			      &ac,
			      &ap_req,
			      princ,
			      &tkey->key,
			      verify_ap_req_flags,
			      &ap_req_options,
			      ticket,
			      KRB5_KU_TGS_REQ_AUTH);

    FUNC20(context, princ);
    if(ret) {
	const char *msg = FUNC21(context, ret);
	FUNC8(context, config, 0, "Failed to verify AP-REQ: %s", msg);
	FUNC19(context, msg);
	goto out;
    }

    {
	krb5_authenticator auth;

	ret = FUNC10(context, ac, &auth);
	if (ret == 0) {
	    *csec   = FUNC24(sizeof(**csec));
	    if (*csec == NULL) {
		FUNC18(context, &auth);
		FUNC8(context, config, 0, "malloc failed");
		goto out;
	    }
	    **csec  = auth->ctime;
	    *cusec  = FUNC24(sizeof(**cusec));
	    if (*cusec == NULL) {
		FUNC18(context, &auth);
		FUNC8(context, config, 0, "malloc failed");
		goto out;
	    }
	    **cusec  = auth->cusec;
	    FUNC18(context, &auth);
	}
    }

    ret = FUNC26(context, config,
				  ac, b, e_text, &(*ticket)->ticket.key);
    if (ret) {
	FUNC9(context, ac);
	goto out;
    }

    usage = KRB5_KU_TGS_REQ_AUTH_DAT_SUBKEY;
    *rk_is_subkey = 1;

    ret = FUNC12(context, ac, &subkey);
    if(ret){
	const char *msg = FUNC21(context, ret);
	FUNC9(context, ac);
	FUNC8(context, config, 0, "Failed to get remote subkey: %s", msg);
	FUNC19(context, msg);
	goto out;
    }
    if(subkey == NULL){
	usage = KRB5_KU_TGS_REQ_AUTH_DAT_SESSION;
	*rk_is_subkey = 0;

	ret = FUNC11(context, ac, &subkey);
	if(ret) {
	    const char *msg = FUNC21(context, ret);
	    FUNC9(context, ac);
	    FUNC8(context, config, 0, "Failed to get session key: %s", msg);
	    FUNC19(context, msg);
	    goto out;
	}
    }
    if(subkey == NULL){
	FUNC9(context, ac);
	FUNC8(context, config, 0,
		"Failed to get key for enc-authorization-data");
	ret = KRB5KRB_AP_ERR_BAD_INTEGRITY; /* ? */
	goto out;
    }

    *replykey = subkey;

    if (b->enc_authorization_data) {
	krb5_data ad;

	ret = FUNC14(context, subkey, 0, &crypto);
	if (ret) {
	    const char *msg = FUNC21(context, ret);
	    FUNC9(context, ac);
	    FUNC8(context, config, 0, "krb5_crypto_init failed: %s", msg);
	    FUNC19(context, msg);
	    goto out;
	}
	ret = FUNC16 (context,
					  crypto,
					  usage,
					  b->enc_authorization_data,
					  &ad);
	FUNC13(context, crypto);
	if(ret){
	    FUNC9(context, ac);
	    FUNC8(context, config, 0,
		    "Failed to decrypt enc-authorization-data");
	    ret = KRB5KRB_AP_ERR_BAD_INTEGRITY; /* ? */
	    goto out;
	}
	FUNC0(*auth_data);
	if (*auth_data == NULL) {
	    FUNC9(context, ac);
	    ret = KRB5KRB_AP_ERR_BAD_INTEGRITY; /* ? */
	    goto out;
	}
	ret = FUNC3(ad.data, ad.length, *auth_data, NULL);
	if(ret){
	    FUNC9(context, ac);
	    FUNC4(*auth_data);
	    *auth_data = NULL;
	    FUNC8(context, config, 0, "Failed to decode authorization data");
	    ret = KRB5KRB_AP_ERR_BAD_INTEGRITY; /* ? */
	    goto out;
	}
    }

    FUNC9(context, ac);

out:
    FUNC5(&ap_req);

    return ret;
}