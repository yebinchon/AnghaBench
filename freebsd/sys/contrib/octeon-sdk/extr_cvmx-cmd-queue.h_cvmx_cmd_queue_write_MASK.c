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
struct TYPE_5__ {int max_depth; int index; int pool_size_m1; int base_ptr_div128; int /*<<< orphan*/  fpa_pool; } ;
typedef  TYPE_1__ __cvmx_cmd_queue_state_t ;

/* Variables and functions */
 scalar_t__ CVMX_CMD_QUEUE_ENABLE_MAX_DEPTH ; 
 int /*<<< orphan*/  CVMX_CMD_QUEUE_FULL ; 
 int /*<<< orphan*/  CVMX_CMD_QUEUE_INVALID_PARAM ; 
 int /*<<< orphan*/  CVMX_CMD_QUEUE_NO_MEMORY ; 
 int /*<<< orphan*/  CVMX_CMD_QUEUE_SUCCESS ; 
 scalar_t__ CVMX_ENABLE_PARAMETER_CHECKING ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 
 int FUNC7 (int*) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static inline cvmx_cmd_queue_result_t FUNC9(cvmx_cmd_queue_id_t queue_id, int use_locking, int cmd_count, uint64_t *cmds)
{
    __cvmx_cmd_queue_state_t *qptr = FUNC0(queue_id);

    if (CVMX_ENABLE_PARAMETER_CHECKING)
    {
        if (FUNC8(qptr == NULL))
            return CVMX_CMD_QUEUE_INVALID_PARAM;
        if (FUNC8((cmd_count < 1) || (cmd_count > 32)))
            return CVMX_CMD_QUEUE_INVALID_PARAM;
        if (FUNC8(cmds == NULL))
            return CVMX_CMD_QUEUE_INVALID_PARAM;
    }

    /* Make sure nobody else is updating the same queue */
    if (FUNC5(use_locking))
        FUNC1(queue_id, qptr);

    /* If a max queue length was specified then make sure we don't
        exceed it. If any part of the command would be below the limit
        we allow it */
    if (CVMX_CMD_QUEUE_ENABLE_MAX_DEPTH && FUNC8(qptr->max_depth))
    {
        if (FUNC8(FUNC3(queue_id) > (int)qptr->max_depth))
        {
            if (FUNC5(use_locking))
                FUNC2(qptr);
            return CVMX_CMD_QUEUE_FULL;
        }
    }

    /* Normally there is plenty of room in the current buffer for the command */
    if (FUNC5(qptr->index + cmd_count < qptr->pool_size_m1))
    {
        uint64_t *ptr = (uint64_t *)FUNC6((uint64_t)qptr->base_ptr_div128<<7);
        ptr += qptr->index;
        qptr->index += cmd_count;
        while (cmd_count--)
            *ptr++ = *cmds++;
    }
    else
    {
        uint64_t *ptr;
        int count;
        /* We need a new command buffer. Fail if there isn't one available */
        uint64_t *new_buffer = (uint64_t *)FUNC4(qptr->fpa_pool);
        if (FUNC8(new_buffer == NULL))
        {
            if (FUNC5(use_locking))
                FUNC2(qptr);
            return CVMX_CMD_QUEUE_NO_MEMORY;
        }
        ptr = (uint64_t *)FUNC6((uint64_t)qptr->base_ptr_div128<<7);
        /* Figure out how many command words will fit in this buffer. One
            location will be needed for the next buffer pointer */
        count = qptr->pool_size_m1 - qptr->index;
        ptr += qptr->index;
        cmd_count-=count;
        while (count--)
            *ptr++ = *cmds++;
        *ptr = FUNC7(new_buffer);
        /* The current buffer is full and has a link to the next buffer. Time
            to write the rest of the commands into the new buffer */
        qptr->base_ptr_div128 = *ptr >> 7;
        qptr->index = cmd_count;
        ptr = new_buffer;
        while (cmd_count--)
            *ptr++ = *cmds++;
    }

    /* All updates are complete. Release the lock and return */
    if (FUNC5(use_locking))
        FUNC2(qptr);
    return CVMX_CMD_QUEUE_SUCCESS;
}