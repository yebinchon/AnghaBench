#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xdrproc_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_7__ {int /*<<< orphan*/  gc_seq; } ;
struct TYPE_6__ {int length; int /*<<< orphan*/ * value; } ;
struct rpc_gss_data {scalar_t__ gd_state; scalar_t__ gd_qop; int /*<<< orphan*/  gd_mech; int /*<<< orphan*/  gd_ctx; TYPE_2__ gd_cred; TYPE_1__ gd_verf; } ;
struct opaque_auth {int oa_length; int /*<<< orphan*/ * oa_base; } ;
typedef  int /*<<< orphan*/  num ;
typedef  scalar_t__ gss_qop_t ;
struct TYPE_8__ {int length; int /*<<< orphan*/ * value; } ;
typedef  TYPE_3__ gss_buffer_desc ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  scalar_t__ OM_uint32 ;
typedef  int /*<<< orphan*/  AUTH ;

/* Variables and functions */
 struct rpc_gss_data* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  EPERM ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ GSS_S_COMPLETE ; 
 scalar_t__ GSS_S_CONTEXT_EXPIRED ; 
 scalar_t__ RPCSEC_GSS_CONTEXT ; 
 int /*<<< orphan*/  RPC_GSS_ER_SYSTEMERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (scalar_t__*,int /*<<< orphan*/ ,TYPE_3__*,TYPE_3__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ xdr_gss_buffer_desc ; 

__attribute__((used)) static bool_t
FUNC11(AUTH *auth, struct opaque_auth *verf)
{
	struct rpc_gss_data	*gd;
	gss_qop_t		qop_state;
	uint32_t		num;
	gss_buffer_desc		signbuf, checksum;
	OM_uint32		maj_stat, min_stat;

	FUNC5("in rpc_gss_validate()");
	
	gd = FUNC0(auth);

	if (gd->gd_state == RPCSEC_GSS_CONTEXT) {
		/*
		 * Save the on the wire verifier to validate last INIT
		 * phase packet after decode if the major status is
		 * GSS_S_COMPLETE.
		 */
		if (gd->gd_verf.value)
			FUNC10((xdrproc_t) xdr_gss_buffer_desc,
			    (char *) &gd->gd_verf);
		gd->gd_verf.value = FUNC7(verf->oa_length);
		if (gd->gd_verf.value == NULL) {
			FUNC2(stderr, "gss_validate: out of memory\n");
			FUNC1(RPC_GSS_ER_SYSTEMERROR, ENOMEM);
			return (FALSE);
		}
		FUNC8(gd->gd_verf.value, verf->oa_base, verf->oa_length);
		gd->gd_verf.length = verf->oa_length;
		return (TRUE);
	}

	num = FUNC4(gd->gd_cred.gc_seq);
	signbuf.value = &num;
	signbuf.length = sizeof(num);
	
	checksum.value = verf->oa_base;
	checksum.length = verf->oa_length;
	
	maj_stat = FUNC3(&min_stat, gd->gd_ctx, &signbuf,
	    &checksum, &qop_state);
	if (maj_stat != GSS_S_COMPLETE || qop_state != gd->gd_qop) {
		FUNC6("gss_verify_mic", gd->gd_mech, maj_stat, min_stat);
		if (maj_stat == GSS_S_CONTEXT_EXPIRED) {
			FUNC9(auth, TRUE);
		}
		FUNC1(RPC_GSS_ER_SYSTEMERROR, EPERM);
		return (FALSE);
	}
	return (TRUE);
}