#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ (* xdrproc_t ) (int /*<<< orphan*/ *,void*) ;
typedef  int /*<<< orphan*/  tmpheader ;
struct TYPE_7__ {scalar_t__ gc_proc; scalar_t__ gc_svc; int /*<<< orphan*/  gc_seq; } ;
struct rpc_gss_data {scalar_t__ gd_state; TYPE_2__ gd_cred; int /*<<< orphan*/  gd_qop; int /*<<< orphan*/  gd_ctx; int /*<<< orphan*/  gd_mech; } ;
struct opaque_auth {char* oa_base; size_t oa_length; void* oa_flavor; } ;
struct TYPE_6__ {size_t length; char* value; } ;
typedef  TYPE_1__ gss_buffer_desc ;
typedef  int /*<<< orphan*/  credbuf ;
typedef  scalar_t__ bool_t ;
typedef  int /*<<< orphan*/  XDR ;
typedef  scalar_t__ OM_uint32 ;
typedef  int /*<<< orphan*/  AUTH ;

/* Variables and functions */
 struct rpc_gss_data* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  EPERM ; 
 scalar_t__ FALSE ; 
 scalar_t__ GSS_S_COMPLETE ; 
 scalar_t__ GSS_S_CONTEXT_EXPIRED ; 
 int MAX_AUTH_BYTES ; 
 void* RPCSEC_GSS ; 
 scalar_t__ RPCSEC_GSS_CONTINUE_INIT ; 
 scalar_t__ RPCSEC_GSS_ESTABLISHED ; 
 scalar_t__ RPCSEC_GSS_INIT ; 
 int /*<<< orphan*/  RPC_GSS_ER_SYSTEMERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  XDR_ENCODE ; 
 void* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,size_t) ; 
 struct opaque_auth _null_auth ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ rpc_gss_svc_none ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,struct opaque_auth*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,scalar_t__ (*) (int /*<<< orphan*/ *,void*),void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 

bool_t
FUNC14(AUTH *auth, void *header, size_t headerlen,
    XDR* xdrs, xdrproc_t xdr_args, void *args_ptr)
{
	XDR			 tmpxdrs;
	char			 credbuf[MAX_AUTH_BYTES];
	char			 tmpheader[MAX_AUTH_BYTES];
	struct opaque_auth	 creds, verf;
	struct rpc_gss_data	*gd;
	gss_buffer_desc		 rpcbuf, checksum;
	OM_uint32		 maj_stat, min_stat;
	bool_t			 xdr_stat;
	
	FUNC7("in rpc_gss_wrap()");
	
	gd = FUNC0(auth);

	if (gd->gd_state == RPCSEC_GSS_ESTABLISHED)
		gd->gd_cred.gc_seq++;
	
	/*
	 * We need to encode our creds and then put the header and
	 * creds together in a buffer so that we can create a checksum
	 * for the verf.
	 */
	FUNC13(&tmpxdrs, credbuf, sizeof(credbuf), XDR_ENCODE);
	if (!FUNC11(&tmpxdrs, &gd->gd_cred)) {
		FUNC1(&tmpxdrs);
		FUNC4(RPC_GSS_ER_SYSTEMERROR, ENOMEM);
		return (FALSE);
	}
	creds.oa_flavor = RPCSEC_GSS;
	creds.oa_base = credbuf;
	creds.oa_length = FUNC2(&tmpxdrs);
	FUNC1(&tmpxdrs);
	
	FUNC13(&tmpxdrs, tmpheader, sizeof(tmpheader), XDR_ENCODE);
	if (!FUNC3(&tmpxdrs, header, headerlen) ||
	    !FUNC10(&tmpxdrs, &creds)) {
		FUNC1(&tmpxdrs);
		FUNC4(RPC_GSS_ER_SYSTEMERROR, ENOMEM);
		return (FALSE);
	}
	headerlen = FUNC2(&tmpxdrs);
	FUNC1(&tmpxdrs);
		
	if (!FUNC3(xdrs, tmpheader, headerlen)) {
		FUNC4(RPC_GSS_ER_SYSTEMERROR, ENOMEM);
		return (FALSE);
	}
	
	if (gd->gd_cred.gc_proc == RPCSEC_GSS_INIT ||
	    gd->gd_cred.gc_proc == RPCSEC_GSS_CONTINUE_INIT) {
		if (!FUNC10(xdrs, &_null_auth)) {
			FUNC4(RPC_GSS_ER_SYSTEMERROR, ENOMEM);
			return (FALSE);
		}
	} else {
		/*
		 * Checksum serialized RPC header, up to and including
		 * credential.
		 */
		rpcbuf.length = headerlen;
		rpcbuf.value = tmpheader;
	
		maj_stat = FUNC5(&min_stat, gd->gd_ctx, gd->gd_qop,
		    &rpcbuf, &checksum);

		if (maj_stat != GSS_S_COMPLETE) {
			FUNC8("gss_get_mic", gd->gd_mech,
			    maj_stat, min_stat);
			if (maj_stat == GSS_S_CONTEXT_EXPIRED) {
				FUNC9(auth, TRUE);
			}
			FUNC4(RPC_GSS_ER_SYSTEMERROR, EPERM);
			return (FALSE);
		}

		verf.oa_flavor = RPCSEC_GSS;
		verf.oa_base = checksum.value;
		verf.oa_length = checksum.length;

		xdr_stat = FUNC10(xdrs, &verf);
		FUNC6(&min_stat, &checksum);
		if (!xdr_stat) {
			FUNC4(RPC_GSS_ER_SYSTEMERROR, ENOMEM);
			return (FALSE);
		}
	}
	
	if (gd->gd_state != RPCSEC_GSS_ESTABLISHED ||
	    gd->gd_cred.gc_svc == rpc_gss_svc_none) {
		return (xdr_args(xdrs, args_ptr));
	}
	return (FUNC12(xdrs, xdr_args, args_ptr,
		gd->gd_ctx, gd->gd_qop, gd->gd_cred.gc_svc,
		gd->gd_cred.gc_seq));
}