#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct _gss_mechanism_cred {int /*<<< orphan*/  gmc_cred; TYPE_1__* gmc_mech; int /*<<< orphan*/  gc_mc; } ;
struct _gss_cred {int /*<<< orphan*/  gmc_cred; TYPE_1__* gmc_mech; int /*<<< orphan*/  gc_mc; } ;
typedef  scalar_t__ gss_cred_id_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* gm_release_cred ) (scalar_t__*,int /*<<< orphan*/ *) ;} ;
typedef  scalar_t__ OM_uint32 ;

/* Variables and functions */
 scalar_t__ GSS_C_NO_CREDENTIAL ; 
 scalar_t__ GSS_S_COMPLETE ; 
 struct _gss_mechanism_cred* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct _gss_mechanism_cred*) ; 
 int /*<<< orphan*/  gmc_link ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ *) ; 

OM_uint32
FUNC4(OM_uint32 *minor_status, gss_cred_id_t *cred_handle)
{
	struct _gss_cred *cred = (struct _gss_cred *) *cred_handle;
	struct _gss_mechanism_cred *mc;

	if (*cred_handle == GSS_C_NO_CREDENTIAL)
	    return (GSS_S_COMPLETE);

	while (FUNC0(&cred->gc_mc)) {
		mc = FUNC0(&cred->gc_mc);
		FUNC1(&cred->gc_mc, gmc_link);
		mc->gmc_mech->gm_release_cred(minor_status, &mc->gmc_cred);
		FUNC2(mc);
	}
	FUNC2(cred);

	*minor_status = 0;
	*cred_handle = GSS_C_NO_CREDENTIAL;
	return (GSS_S_COMPLETE);
}