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
struct TYPE_7__ {int /*<<< orphan*/  policies; int /*<<< orphan*/ * default_policy; TYPE_1__* request; } ;
struct TYPE_6__ {int /*<<< orphan*/ * policy_id; } ;
typedef  TYPE_2__ TS_RESP_CTX ;
typedef  int /*<<< orphan*/  ASN1_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TS_F_TS_RESP_GET_POLICY ; 
 int /*<<< orphan*/  TS_INFO_UNACCEPTED_POLICY ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TS_R_INVALID_NULL_POINTER ; 
 int /*<<< orphan*/  TS_R_UNACCEPTABLE_POLICY ; 
 int /*<<< orphan*/  TS_STATUS_REJECTION ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ASN1_OBJECT *FUNC6(TS_RESP_CTX *ctx)
{
    ASN1_OBJECT *requested = ctx->request->policy_id;
    ASN1_OBJECT *policy = NULL;
    int i;

    if (ctx->default_policy == NULL) {
        FUNC3(TS_F_TS_RESP_GET_POLICY, TS_R_INVALID_NULL_POINTER);
        return NULL;
    }
    if (!requested || !FUNC0(requested, ctx->default_policy))
        policy = ctx->default_policy;

    /* Check if the policy is acceptable. */
    for (i = 0; !policy && i < FUNC4(ctx->policies); ++i) {
        ASN1_OBJECT *current = FUNC5(ctx->policies, i);
        if (!FUNC0(requested, current))
            policy = current;
    }
    if (!policy) {
        FUNC3(TS_F_TS_RESP_GET_POLICY, TS_R_UNACCEPTABLE_POLICY);
        FUNC2(ctx, TS_STATUS_REJECTION,
                                    "Requested policy is not " "supported.");
        FUNC1(ctx, TS_INFO_UNACCEPTED_POLICY);
    }
    return policy;
}