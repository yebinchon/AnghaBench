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
typedef  int /*<<< orphan*/  xdrproc_t ;
struct TYPE_2__ {scalar_t__ value; } ;
struct rpc_gss_data {scalar_t__ gd_name; TYPE_1__ gd_verf; } ;
typedef  int /*<<< orphan*/  OM_uint32 ;
typedef  struct rpc_gss_data AUTH ;

/* Variables and functions */
 struct rpc_gss_data* FUNC0 (struct rpc_gss_data*) ; 
 scalar_t__ GSS_C_NO_NAME ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct rpc_gss_data*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct rpc_gss_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ xdr_gss_buffer_desc ; 

__attribute__((used)) static void
FUNC6(AUTH *auth)
{
	struct rpc_gss_data	*gd;
	OM_uint32		 min_stat;
	
	FUNC2("in rpc_gss_destroy()");
	
	gd = FUNC0(auth);
	
	FUNC4(auth, TRUE);
	
	if (gd->gd_name != GSS_C_NO_NAME)
		FUNC1(&min_stat, &gd->gd_name);
	if (gd->gd_verf.value)
		FUNC5((xdrproc_t) xdr_gss_buffer_desc,
		    (char *) &gd->gd_verf);

	FUNC3(gd, sizeof(*gd));
	FUNC3(auth, sizeof(*auth));
}