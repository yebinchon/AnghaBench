#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  gss_name_t ;
typedef  int /*<<< orphan*/  gss_cred_usage_t ;
typedef  int /*<<< orphan*/  gss_cred_id_t ;
typedef  scalar_t__ OM_uint32 ;

/* Variables and functions */
 int /*<<< orphan*/  GSS_C_INDEFINITE ; 
 int /*<<< orphan*/  GSS_C_NO_OID_SET ; 
 scalar_t__ GSS_S_COMPLETE ; 
 scalar_t__ FUNC0 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__,char*,int,int) ; 
 scalar_t__ FUNC2 (scalar_t__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(gss_name_t name, int counter, gss_cred_usage_t usage)
{
    OM_uint32 maj_stat, min_stat;
    gss_cred_id_t cred;
    int i;

    for (i = 0; i < counter; i++) {
	maj_stat = FUNC0(&min_stat, name,
				    GSS_C_INDEFINITE,
				    GSS_C_NO_OID_SET,
				    usage,
				    &cred,
				    NULL,
				    NULL);
	if (maj_stat != GSS_S_COMPLETE)
	    FUNC1(1, min_stat, "aquire %d %d != GSS_S_COMPLETE",
		    i, (int)maj_stat);

	maj_stat = FUNC2(&min_stat, &cred);
	if (maj_stat != GSS_S_COMPLETE)
	    FUNC1(1, min_stat, "release %d %d != GSS_S_COMPLETE",
		    i, (int)maj_stat);
    }
}