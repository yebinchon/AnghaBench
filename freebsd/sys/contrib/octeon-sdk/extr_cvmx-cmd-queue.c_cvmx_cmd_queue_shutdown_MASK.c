#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  cvmx_cmd_queue_result_t ;
typedef  int /*<<< orphan*/  cvmx_cmd_queue_id_t ;
struct TYPE_5__ {scalar_t__ base_ptr_div128; int /*<<< orphan*/  fpa_pool; } ;
typedef  TYPE_1__ __cvmx_cmd_queue_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  CVMX_CMD_QUEUE_FULL ; 
 int /*<<< orphan*/  CVMX_CMD_QUEUE_INVALID_PARAM ; 
 int /*<<< orphan*/  CVMX_CMD_QUEUE_SUCCESS ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

cvmx_cmd_queue_result_t FUNC7(cvmx_cmd_queue_id_t queue_id)
{
    __cvmx_cmd_queue_state_t *qptr = FUNC0(queue_id);
    if (qptr == NULL)
    {
        FUNC4("ERROR: cvmx_cmd_queue_shutdown: Unable to get queue information.\n");
        return CVMX_CMD_QUEUE_INVALID_PARAM;
    }

    if (FUNC3(queue_id) > 0)
    {
        FUNC4("ERROR: cvmx_cmd_queue_shutdown: Queue still has data in it.\n");
        return CVMX_CMD_QUEUE_FULL;
    }

    FUNC1(queue_id, qptr);
    if (qptr->base_ptr_div128)
    {
        FUNC5(FUNC6((uint64_t)qptr->base_ptr_div128<<7), qptr->fpa_pool, 0);
        qptr->base_ptr_div128 = 0;
    }
    FUNC2(qptr);

    return CVMX_CMD_QUEUE_SUCCESS;
}