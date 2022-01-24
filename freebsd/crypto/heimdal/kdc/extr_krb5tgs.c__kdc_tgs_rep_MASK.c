#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int time_t ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  krb5_ticket ;
typedef  int /*<<< orphan*/  krb5_keyblock ;
struct TYPE_15__ {scalar_t__ max_datagram_reply_length; } ;
typedef  TYPE_1__ krb5_kdc_configuration ;
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_enctype ;
struct TYPE_16__ {scalar_t__ length; int /*<<< orphan*/ * data; } ;
typedef  TYPE_2__ krb5_data ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  int /*<<< orphan*/  hdb_entry_ex ;
struct TYPE_17__ {int /*<<< orphan*/  req_body; int /*<<< orphan*/ * padata; } ;
typedef  int /*<<< orphan*/  PA_DATA ;
typedef  TYPE_3__ KDC_REQ ;
typedef  int AuthorizationData ;

/* Variables and functions */
 int /*<<< orphan*/  ETYPE_NULL ; 
 scalar_t__ HDB_ERR_NOT_FOUND_HERE ; 
 scalar_t__ KRB5KDC_ERR_PADATA_TYPE_NOSUPP ; 
 scalar_t__ KRB5KDC_ERR_PREAUTH_REQUIRED ; 
 scalar_t__ KRB5KRB_ERR_RESPONSE_TOO_BIG ; 
 int /*<<< orphan*/  KRB5_PADATA_TGS_REQ ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_3__*,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int*,TYPE_2__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,TYPE_1__*,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,TYPE_2__*,char const*,char const**,int**,struct sockaddr*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ **,char const**,char const*,struct sockaddr*,int**,int**,int**,int /*<<< orphan*/ **,int*) ; 

krb5_error_code
FUNC11(krb5_context context,
	     krb5_kdc_configuration *config,
	     KDC_REQ *req,
	     krb5_data *data,
	     const char *from,
	     struct sockaddr *from_addr,
	     int datagram_reply)
{
    AuthorizationData *auth_data = NULL;
    krb5_error_code ret;
    int i = 0;
    const PA_DATA *tgs_req;

    hdb_entry_ex *krbtgt = NULL;
    krb5_ticket *ticket = NULL;
    const char *e_text = NULL;
    krb5_enctype krbtgt_etype = ETYPE_NULL;

    krb5_keyblock *replykey = NULL;
    int rk_is_subkey = 0;
    time_t *csec = NULL;
    int *cusec = NULL;

    if(req->padata == NULL){
	ret = KRB5KDC_ERR_PREAUTH_REQUIRED; /* XXX ??? */
	FUNC4(context, config, 0,
		"TGS-REQ from %s without PA-DATA", from);
	goto out;
    }

    tgs_req = FUNC0(req, &i, KRB5_PADATA_TGS_REQ);

    if(tgs_req == NULL){
	ret = KRB5KDC_ERR_PADATA_TYPE_NOSUPP;

	FUNC4(context, config, 0,
		"TGS-REQ from %s without PA-TGS-REQ", from);
	goto out;
    }
    ret = FUNC10(context, config,
			    &req->req_body, tgs_req,
			    &krbtgt,
			    &krbtgt_etype,
			    &ticket,
			    &e_text,
			    from, from_addr,
			    &csec, &cusec,
			    &auth_data,
			    &replykey,
			    &rk_is_subkey);
    if (ret == HDB_ERR_NOT_FOUND_HERE) {
	/* kdc_log() is called in tgs_parse_request() */
	goto out;
    }
    if (ret) {
	FUNC4(context, config, 0,
		"Failed parsing TGS-REQ from %s", from);
	goto out;
    }

    ret = FUNC9(context,
			  config,
			  req,
			  &req->req_body,
			  krbtgt,
			  krbtgt_etype,
			  replykey,
			  rk_is_subkey,
			  ticket,
			  data,
			  from,
			  &e_text,
			  &auth_data,
			  from_addr);
    if (ret) {
	FUNC4(context, config, 0,
		"Failed building TGS-REP to %s", from);
	goto out;
    }

    /* */
    if (datagram_reply && data->length > config->max_datagram_reply_length) {
	FUNC5(data);
	ret = KRB5KRB_ERR_RESPONSE_TOO_BIG;
	e_text = "Reply packet too large";
    }

out:
    if (replykey)
	FUNC6(context, replykey);
    if(ret && ret != HDB_ERR_NOT_FOUND_HERE && data->data == NULL){
	FUNC8(context,
		      ret,
		      NULL,
		      NULL,
		      NULL,
		      NULL,
		      csec,
		      cusec,
		      data);
	ret = 0;
    }
    FUNC2(csec);
    FUNC2(cusec);
    if (ticket)
	FUNC7(context, ticket);
    if(krbtgt)
	FUNC1(context, krbtgt);

    if (auth_data) {
	FUNC3(auth_data);
	FUNC2(auth_data);
    }

    return ret;
}