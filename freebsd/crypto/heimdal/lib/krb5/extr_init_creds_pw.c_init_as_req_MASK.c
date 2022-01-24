#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_8__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_16__ ;

/* Type definitions */
typedef  scalar_t__ krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_enctype ;
struct TYPE_18__ {scalar_t__ renew_till; scalar_t__ endtime; scalar_t__ starttime; } ;
struct TYPE_21__ {TYPE_1__ times; TYPE_16__* server; TYPE_16__* client; } ;
typedef  TYPE_4__ krb5_creds ;
typedef  int /*<<< orphan*/  krb5_context ;
struct TYPE_22__ {scalar_t__ len; } ;
typedef  TYPE_5__ krb5_addresses ;
struct TYPE_24__ {scalar_t__ len; } ;
struct TYPE_19__ {int /*<<< orphan*/  val; int /*<<< orphan*/  len; } ;
struct TYPE_20__ {int /*<<< orphan*/ * additional_tickets; int /*<<< orphan*/ * enc_authorization_data; TYPE_8__* addresses; TYPE_2__ etype; scalar_t__ nonce; scalar_t__* rtime; scalar_t__* till; scalar_t__* from; int /*<<< orphan*/ * sname; int /*<<< orphan*/  realm; int /*<<< orphan*/ * cname; int /*<<< orphan*/  kdc_options; } ;
struct TYPE_23__ {int pvno; int /*<<< orphan*/ * padata; TYPE_3__ req_body; int /*<<< orphan*/  msg_type; } ;
struct TYPE_17__ {int /*<<< orphan*/  realm; } ;
typedef  int /*<<< orphan*/  KDCOptions ;
typedef  TYPE_6__ AS_REQ ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int) ; 
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  KRB5_PDU_AS_REQUEST ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_16__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,TYPE_5__ const*,TYPE_8__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  krb_as_req ; 
 void* FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static krb5_error_code
FUNC12 (krb5_context context,
	     KDCOptions opts,
	     const krb5_creds *creds,
	     const krb5_addresses *addrs,
	     const krb5_enctype *etypes,
	     AS_REQ *a)
{
    krb5_error_code ret;

    FUNC11(a, 0, sizeof(*a));

    a->pvno = 5;
    a->msg_type = krb_as_req;
    a->req_body.kdc_options = opts;
    a->req_body.cname = FUNC10(sizeof(*a->req_body.cname));
    if (a->req_body.cname == NULL) {
	ret = ENOMEM;
	FUNC9(context, ret, FUNC1("malloc: out of memory", ""));
	goto fail;
    }
    a->req_body.sname = FUNC10(sizeof(*a->req_body.sname));
    if (a->req_body.sname == NULL) {
	ret = ENOMEM;
	FUNC9(context, ret, FUNC1("malloc: out of memory", ""));
	goto fail;
    }

    ret = FUNC3 (a->req_body.cname, creds->client);
    if (ret)
	goto fail;
    ret = FUNC4(&creds->client->realm, &a->req_body.realm);
    if (ret)
	goto fail;

    ret = FUNC3 (a->req_body.sname, creds->server);
    if (ret)
	goto fail;

    if(creds->times.starttime) {
	a->req_body.from = FUNC10(sizeof(*a->req_body.from));
	if (a->req_body.from == NULL) {
	    ret = ENOMEM;
	    FUNC9(context, ret, FUNC1("malloc: out of memory", ""));
	    goto fail;
	}
	*a->req_body.from = creds->times.starttime;
    }
    if(creds->times.endtime){
	FUNC0(a->req_body.till, 1);
	*a->req_body.till = creds->times.endtime;
    }
    if(creds->times.renew_till){
	a->req_body.rtime = FUNC10(sizeof(*a->req_body.rtime));
	if (a->req_body.rtime == NULL) {
	    ret = ENOMEM;
	    FUNC9(context, ret, FUNC1("malloc: out of memory", ""));
	    goto fail;
	}
	*a->req_body.rtime = creds->times.renew_till;
    }
    a->req_body.nonce = 0;
    ret = FUNC2(context,
			   KRB5_PDU_AS_REQUEST,
			   &a->req_body.etype.len,
			   &a->req_body.etype.val,
			   etypes);
    if (ret)
	goto fail;

    /*
     * This means no addresses
     */

    if (addrs && addrs->len == 0) {
	a->req_body.addresses = NULL;
    } else {
	a->req_body.addresses = FUNC10(sizeof(*a->req_body.addresses));
	if (a->req_body.addresses == NULL) {
	    ret = ENOMEM;
	    FUNC9(context, ret, FUNC1("malloc: out of memory", ""));
	    goto fail;
	}

	if (addrs)
	    ret = FUNC7(context, addrs, a->req_body.addresses);
	else {
	    ret = FUNC8 (context, a->req_body.addresses);
	    if(ret == 0 && a->req_body.addresses->len == 0) {
		FUNC5(a->req_body.addresses);
		a->req_body.addresses = NULL;
	    }
	}
	if (ret)
	    goto fail;
    }

    a->req_body.enc_authorization_data = NULL;
    a->req_body.additional_tickets = NULL;

    a->padata = NULL;

    return 0;
 fail:
    FUNC6(a);
    FUNC11(a, 0, sizeof(*a));
    return ret;
}