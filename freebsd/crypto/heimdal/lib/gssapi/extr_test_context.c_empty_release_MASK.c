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
typedef  int /*<<< orphan*/  gss_ctx_id_t ;
typedef  int /*<<< orphan*/  gss_cred_id_t ;
typedef  int /*<<< orphan*/  gss_OID_set ;
typedef  int /*<<< orphan*/  OM_uint32 ;

/* Variables and functions */
 int /*<<< orphan*/  GSS_C_NO_CONTEXT ; 
 int /*<<< orphan*/  GSS_C_NO_CREDENTIAL ; 
 int /*<<< orphan*/  GSS_C_NO_NAME ; 
 int /*<<< orphan*/  GSS_C_NO_OID_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(void)
{
    gss_ctx_id_t ctx = GSS_C_NO_CONTEXT;
    gss_cred_id_t cred = GSS_C_NO_CREDENTIAL;
    gss_name_t name = GSS_C_NO_NAME;
    gss_OID_set oidset = GSS_C_NO_OID_SET;
    OM_uint32 junk;

    FUNC0(&junk, &ctx, NULL);
    FUNC1(&junk, &cred);
    FUNC2(&junk, &name);
    FUNC3(&junk, &oidset);
}