#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  req_bkt; scalar_t__ writing_started; } ;
typedef  TYPE_1__ serf_request_t ;
typedef  int /*<<< orphan*/  apr_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  APR_EBUSY ; 
 int /*<<< orphan*/  APR_SUCCESS ; 

apr_status_t FUNC0(serf_request_t *request)
{
    if (request->writing_started && !request->req_bkt)
        return APR_SUCCESS;

    return APR_EBUSY;
}