#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  void* u_int ;
struct svc_rpc_gss_svc_name {void* sn_version; void* sn_program; int /*<<< orphan*/  sn_cred; void* sn_req_time; void* sn_mech; int /*<<< orphan*/  sn_principal; } ;
typedef  int /*<<< orphan*/  gss_name_t ;
typedef  int /*<<< orphan*/  gss_cred_id_t ;
struct TYPE_5__ {int /*<<< orphan*/  length; void* value; } ;
typedef  TYPE_1__ gss_buffer_desc ;
struct TYPE_6__ {int count; void* elements; } ;
typedef  TYPE_2__ gss_OID_set_desc ;
typedef  void* gss_OID ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  scalar_t__ OM_uint32 ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  GSS_C_ACCEPT ; 
 int /*<<< orphan*/  GSS_C_NT_HOSTBASED_SERVICE ; 
 scalar_t__ GSS_S_COMPLETE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct svc_rpc_gss_svc_name*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC1 (scalar_t__*,int /*<<< orphan*/ ,void*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (scalar_t__*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ *) ; 
 struct svc_rpc_gss_svc_name* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char const*,void**) ; 
 int /*<<< orphan*/  sn_link ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  svc_rpc_gss_svc_names ; 

bool_t
FUNC9(const char *principal, const char *mechanism,
    u_int req_time, u_int program, u_int version)
{
	OM_uint32		maj_stat, min_stat;
	struct svc_rpc_gss_svc_name *sname;
	gss_buffer_desc		namebuf;
	gss_name_t		name;
	gss_OID			mech_oid;
	gss_OID_set_desc	oid_set;
	gss_cred_id_t		cred;

	FUNC8();

	if (!FUNC5(mechanism, &mech_oid))
		return (FALSE);
	oid_set.count = 1;
	oid_set.elements = mech_oid;

	namebuf.value = (void *)(intptr_t) principal;
	namebuf.length = FUNC7(principal);

	maj_stat = FUNC2(&min_stat, &namebuf,
				   GSS_C_NT_HOSTBASED_SERVICE, &name);
	if (maj_stat != GSS_S_COMPLETE)
		return (FALSE);

	maj_stat = FUNC1(&min_stat, name,
	    req_time, &oid_set, GSS_C_ACCEPT, &cred, NULL, NULL);
	if (maj_stat != GSS_S_COMPLETE)
		return (FALSE);

	FUNC3(&min_stat, &name);

	sname = FUNC4(sizeof(struct svc_rpc_gss_svc_name));
	if (!sname)
		return (FALSE);
	sname->sn_principal = FUNC6(principal);
	sname->sn_mech = mech_oid;
	sname->sn_req_time = req_time;
	sname->sn_cred = cred;
	sname->sn_program = program;
	sname->sn_version = version;
	FUNC0(&svc_rpc_gss_svc_names, sname, sn_link);

	return (TRUE);
}