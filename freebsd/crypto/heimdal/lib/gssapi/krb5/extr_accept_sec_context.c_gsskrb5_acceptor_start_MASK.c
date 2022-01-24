#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_42__   TYPE_9__ ;
typedef  struct TYPE_41__   TYPE_6__ ;
typedef  struct TYPE_40__   TYPE_5__ ;
typedef  struct TYPE_39__   TYPE_4__ ;
typedef  struct TYPE_38__   TYPE_3__ ;
typedef  struct TYPE_37__   TYPE_2__ ;
typedef  struct TYPE_36__   TYPE_1__ ;
typedef  struct TYPE_35__   TYPE_11__ ;
typedef  struct TYPE_34__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * krb5_rd_req_out_ctx ;
typedef  int /*<<< orphan*/ * krb5_rd_req_in_ctx ;
typedef  int /*<<< orphan*/ * krb5_principal ;
typedef  int /*<<< orphan*/ * krb5_keytab ;
typedef  int /*<<< orphan*/  krb5_keyblock ;
typedef  int krb5_flags ;
typedef  int krb5_error_code ;
struct TYPE_37__ {int /*<<< orphan*/  data; int /*<<< orphan*/  length; } ;
typedef  TYPE_2__ krb5_data ;
typedef  int /*<<< orphan*/  krb5_crypto ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  TYPE_3__* krb5_authenticator ;
typedef  int /*<<< orphan*/  gsskrb5_name ;
typedef  TYPE_4__* gsskrb5_ctx ;
typedef  TYPE_5__* gsskrb5_cred ;
typedef  int /*<<< orphan*/  gss_name_t ;
typedef  int /*<<< orphan*/  gss_cred_id_t ;
typedef  int /*<<< orphan*/  gss_channel_bindings_t ;
typedef  TYPE_6__* gss_buffer_t ;
typedef  int /*<<< orphan*/  gss_OID ;
struct TYPE_42__ {scalar_t__ cksumtype; } ;
struct TYPE_41__ {int /*<<< orphan*/  value; int /*<<< orphan*/  length; } ;
struct TYPE_40__ {int /*<<< orphan*/ * principal; int /*<<< orphan*/ * keytab; } ;
struct TYPE_39__ {int flags; int more_flags; int /*<<< orphan*/  state; int /*<<< orphan*/  lifetime; TYPE_10__* ticket; TYPE_11__* auth_context; int /*<<< orphan*/  fwd_data; int /*<<< orphan*/  target; int /*<<< orphan*/  source; int /*<<< orphan*/  service_keyblock; } ;
struct TYPE_38__ {TYPE_9__* cksum; } ;
struct TYPE_36__ {int /*<<< orphan*/  endtime; } ;
struct TYPE_35__ {int /*<<< orphan*/  keyblock; } ;
struct TYPE_34__ {TYPE_1__ ticket; int /*<<< orphan*/  client; int /*<<< orphan*/  server; } ;
typedef  int OM_uint32 ;

/* Variables and functions */
 int ACCEPTOR_SUBKEY ; 
 int /*<<< orphan*/  ACCEPTOR_WAIT_FOR_DCESTYLE ; 
 int AP_OPTS_MUTUAL_REQUIRED ; 
 int AP_OPTS_USE_SUBKEY ; 
 scalar_t__ CKSUMTYPE_GSSAPI ; 
 int GSS_C_DELEG_FLAG ; 
 int GSS_C_MUTUAL_FLAG ; 
 int GSS_C_REPLAY_FLAG ; 
 int GSS_C_SEQUENCE_FLAG ; 
 int GSS_C_TRANS_FLAG ; 
 int /*<<< orphan*/  GSS_KRB5_MECHANISM ; 
 int GSS_S_BAD_BINDINGS ; 
 int GSS_S_BAD_SIG ; 
 int GSS_S_COMPLETE ; 
 int GSS_S_CONTINUE_NEEDED ; 
 int GSS_S_FAILURE ; 
 int IS_CFX ; 
 scalar_t__ FUNC0 (TYPE_4__*) ; 
 int KRB5KRB_AP_ERR_SKEW ; 
 int KRB5KRB_AP_ERR_TKT_NYV ; 
 int /*<<< orphan*/  KRB5_AUTH_CONTEXT_USE_SUBKEY ; 
 int /*<<< orphan*/  KRB5_KU_AP_REQ_AUTH_CKSUM ; 
 int OPEN ; 
 int FUNC1 (int*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int*,TYPE_6__* const,TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int*,TYPE_2__*,TYPE_6__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * _gsskrb5_keytab ; 
 int FUNC4 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int FUNC5 (int*,int /*<<< orphan*/  const,TYPE_9__*,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_4__*,int) ; 
 int FUNC7 (int*,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_11__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,TYPE_11__*,TYPE_3__**) ; 
 int FUNC10 (int /*<<< orphan*/ ,TYPE_11__*,int /*<<< orphan*/ **) ; 
 int FUNC11 (int /*<<< orphan*/ ,TYPE_11__*,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC18 (int /*<<< orphan*/ ,TYPE_11__*,TYPE_2__*) ; 
 int FUNC19 (int /*<<< orphan*/ ,TYPE_11__**,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC26 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_10__**) ; 
 int FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_9__*) ; 
 int FUNC28 (int*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,TYPE_2__*,TYPE_6__*) ; 

__attribute__((used)) static OM_uint32
FUNC29(OM_uint32 * minor_status,
		       gsskrb5_ctx ctx,
		       krb5_context context,
		       const gss_cred_id_t acceptor_cred_handle,
		       const gss_buffer_t input_token_buffer,
		       const gss_channel_bindings_t input_chan_bindings,
		       gss_name_t * src_name,
		       gss_OID * mech_type,
		       gss_buffer_t output_token,
		       OM_uint32 * ret_flags,
		       OM_uint32 * time_rec,
		       gss_cred_id_t * delegated_cred_handle)
{
    krb5_error_code kret;
    OM_uint32 ret = GSS_S_COMPLETE;
    krb5_data indata;
    krb5_flags ap_options;
    krb5_keytab keytab = NULL;
    int is_cfx = 0;
    const gsskrb5_cred acceptor_cred = (gsskrb5_cred)acceptor_cred_handle;

    /*
     * We may, or may not, have an escapsulation.
     */
    ret = FUNC2 (minor_status,
				input_token_buffer,
				&indata,
				"\x01\x00",
				GSS_KRB5_MECHANISM);

    if (ret) {
	/* Assume that there is no OID wrapping. */
	indata.length	= input_token_buffer->length;
	indata.data	= input_token_buffer->value;
    }

    /*
     * We need to get our keytab
     */
    if (acceptor_cred == NULL) {
	if (_gsskrb5_keytab != NULL)
	    keytab = _gsskrb5_keytab;
    } else if (acceptor_cred->keytab != NULL) {
	keytab = acceptor_cred->keytab;
    }

    /*
     * We need to check the ticket and create the AP-REP packet
     */

    {
	krb5_rd_req_in_ctx in = NULL;
	krb5_rd_req_out_ctx out = NULL;
	krb5_principal server = NULL;

	if (acceptor_cred)
	    server = acceptor_cred->principal;

	kret = FUNC20(context, &in);
	if (kret == 0)
	    kret = FUNC22(context, in, keytab);
	if (kret) {
	    if (in)
		FUNC21(context, in);
	    *minor_status = kret;
	    return GSS_S_FAILURE;
	}

	kret = FUNC19(context,
			       &ctx->auth_context,
			       &indata,
			       server,
			       in, &out);
	FUNC21(context, in);
	if (kret == KRB5KRB_AP_ERR_SKEW || kret == KRB5KRB_AP_ERR_TKT_NYV) {
	    /*
	     * No reply in non-MUTUAL mode, but we don't know that its
	     * non-MUTUAL mode yet, thats inside the 8003 checksum, so
	     * lets only send the error token on clock skew, that
	     * limit when send error token for non-MUTUAL.
	     */
	    return FUNC28(minor_status, context, kret,
				    server, &indata, output_token);
	} else if (kret) {
	    *minor_status = kret;
	    return GSS_S_FAILURE;
	}

	/*
	 * we need to remember some data on the context_handle.
	 */
	kret = FUNC24(context, out,
						  &ap_options);
	if (kret == 0)
	    kret = FUNC26(context, out,
					      &ctx->ticket);
	if (kret == 0)
	    kret = FUNC25(context, out,
						&ctx->service_keyblock);
	ctx->lifetime = ctx->ticket->ticket.endtime;

	FUNC23(context, out);
	if (kret) {
	    ret = GSS_S_FAILURE;
	    *minor_status = kret;
	    return ret;
	}
    }


    /*
     * We need to copy the principal names to the context and the
     * calling layer.
     */
    kret = FUNC12(context,
			       ctx->ticket->client,
			       &ctx->source);
    if (kret) {
	ret = GSS_S_FAILURE;
	*minor_status = kret;
    }

    kret = FUNC12(context,
			       ctx->ticket->server,
			       &ctx->target);
    if (kret) {
	ret = GSS_S_FAILURE;
	*minor_status = kret;
	return ret;
    }

    /*
     * We need to setup some compat stuff, this assumes that
     * context_handle->target is already set.
     */
    ret = FUNC1(minor_status, ctx, context);
    if (ret)
	return ret;

    if (src_name != NULL) {
	kret = FUNC12 (context,
				    ctx->ticket->client,
				    (gsskrb5_name*)src_name);
	if (kret) {
	    ret = GSS_S_FAILURE;
	    *minor_status = kret;
	    return ret;
	}
    }

    /*
     * We need to get the flags out of the 8003 checksum.
     */

    {
	krb5_authenticator authenticator;

	kret = FUNC9(context,
					      ctx->auth_context,
					      &authenticator);
	if(kret) {
	    ret = GSS_S_FAILURE;
	    *minor_status = kret;
	    return ret;
	}

	if (authenticator->cksum == NULL) {
	    FUNC16(context, &authenticator);
	    *minor_status = 0;
	    return GSS_S_BAD_BINDINGS;
	}

        if (authenticator->cksum->cksumtype == CKSUMTYPE_GSSAPI) {
            ret = FUNC5(minor_status,
						input_chan_bindings,
						authenticator->cksum,
						&ctx->flags,
						&ctx->fwd_data);

	    FUNC16(context, &authenticator);
	    if (ret) {
		return ret;
	    }
        } else {
	    krb5_crypto crypto;

	    kret = FUNC14(context,
				    ctx->auth_context->keyblock,
				    0, &crypto);
	    if(kret) {
		FUNC16(context, &authenticator);

		ret = GSS_S_FAILURE;
		*minor_status = kret;
		return ret;
	    }

	    /*
	     * Windows accepts Samba3's use of a kerberos, rather than
	     * GSSAPI checksum here
	     */

	    kret = FUNC27(context,
					crypto, KRB5_KU_AP_REQ_AUTH_CKSUM, NULL, 0,
					authenticator->cksum);
	    FUNC16(context, &authenticator);
	    FUNC13(context, crypto);

	    if(kret) {
		ret = GSS_S_BAD_SIG;
		*minor_status = kret;
		return ret;
	    }

	    /*
	     * Samba style get some flags (but not DCE-STYLE), use
	     * ap_options to guess the mutual flag.
	     */
 	    ctx->flags = GSS_C_REPLAY_FLAG | GSS_C_SEQUENCE_FLAG;
	    if (ap_options & AP_OPTS_MUTUAL_REQUIRED)
		ctx->flags |= GSS_C_MUTUAL_FLAG;
        }
    }

    if(ctx->flags & GSS_C_MUTUAL_FLAG) {
	krb5_data outbuf;
	int use_subkey = 0;

	FUNC6(context, ctx, 1);
	is_cfx = (ctx->more_flags & IS_CFX);

	if (is_cfx || (ap_options & AP_OPTS_USE_SUBKEY)) {
	    use_subkey = 1;
	} else {
	    krb5_keyblock *rkey;

	    /*
	     * If there is a initiator subkey, copy that to acceptor
	     * subkey to match Windows behavior
	     */
	    kret = FUNC10(context,
						 ctx->auth_context,
						 &rkey);
	    if (kret == 0) {
		kret = FUNC11(context,
						    ctx->auth_context,
						    rkey);
		if (kret == 0)
		    use_subkey = 1;
		FUNC17(context, rkey);
	    }
	}
	if (use_subkey) {
	    ctx->more_flags |= ACCEPTOR_SUBKEY;
	    FUNC8(context, ctx->auth_context,
				   KRB5_AUTH_CONTEXT_USE_SUBKEY,
				   NULL);
	}

	kret = FUNC18(context,
			   ctx->auth_context,
			   &outbuf);
	if (kret) {
	    *minor_status = kret;
	    return GSS_S_FAILURE;
	}

	if (FUNC0(ctx)) {
	    output_token->length = outbuf.length;
	    output_token->value = outbuf.data;
	} else {
	    ret = FUNC3(minor_status,
				       &outbuf,
				       output_token,
				       "\x02\x00",
				       GSS_KRB5_MECHANISM);
	    FUNC15 (&outbuf);
	    if (ret)
		return ret;
	}
    }

    ctx->flags |= GSS_C_TRANS_FLAG;

    /* Remember the flags */

    ctx->lifetime = ctx->ticket->ticket.endtime;
    ctx->more_flags |= OPEN;

    if (mech_type)
	*mech_type = GSS_KRB5_MECHANISM;

    if (time_rec) {
	ret = FUNC4(minor_status,
				     context,
				     ctx->lifetime,
				     time_rec);
	if (ret) {
	    return ret;
	}
    }

    /*
     * When GSS_C_DCE_STYLE is in use, we need ask for a AP-REP from
     * the client.
     */
    if (FUNC0(ctx)) {
	/*
	 * Return flags to caller, but we haven't processed
	 * delgations yet
	 */
	if (ret_flags)
	    *ret_flags = (ctx->flags & ~GSS_C_DELEG_FLAG);

	ctx->state = ACCEPTOR_WAIT_FOR_DCESTYLE;
	return GSS_S_CONTINUE_NEEDED;
    }

    ret = FUNC7(minor_status, ctx, context,
				 delegated_cred_handle);

    if (ret_flags)
	*ret_flags = ctx->flags;

    return ret;
}