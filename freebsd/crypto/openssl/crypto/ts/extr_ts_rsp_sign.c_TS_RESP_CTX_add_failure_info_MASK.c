#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* response; } ;
struct TYPE_6__ {int /*<<< orphan*/ * failure_info; } ;
struct TYPE_5__ {TYPE_2__* status_info; } ;
typedef  TYPE_2__ TS_STATUS_INFO ;
typedef  TYPE_3__ TS_RESP_CTX ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  TS_F_TS_RESP_CTX_ADD_FAILURE_INFO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(TS_RESP_CTX *ctx, int failure)
{
    TS_STATUS_INFO *si = ctx->response->status_info;
    if (si->failure_info == NULL
        && (si->failure_info = FUNC0()) == NULL)
        goto err;
    if (!FUNC1(si->failure_info, failure, 1))
        goto err;
    return 1;
 err:
    FUNC2(TS_F_TS_RESP_CTX_ADD_FAILURE_INFO, ERR_R_MALLOC_FAILURE);
    return 0;
}