
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
typedef int cvmx_cmd_queue_result_t ;
typedef int cvmx_cmd_queue_id_t ;
struct TYPE_5__ {int max_depth; int index; int pool_size_m1; int base_ptr_div128; int fpa_pool; } ;
typedef TYPE_1__ __cvmx_cmd_queue_state_t ;


 scalar_t__ CVMX_CMD_QUEUE_ENABLE_MAX_DEPTH ;
 int CVMX_CMD_QUEUE_FULL ;
 int CVMX_CMD_QUEUE_INVALID_PARAM ;
 int CVMX_CMD_QUEUE_NO_MEMORY ;
 int CVMX_CMD_QUEUE_SUCCESS ;
 scalar_t__ CVMX_ENABLE_PARAMETER_CHECKING ;
 TYPE_1__* __cvmx_cmd_queue_get_state (int ) ;
 int __cvmx_cmd_queue_lock (int ,TYPE_1__*) ;
 int __cvmx_cmd_queue_unlock (TYPE_1__*) ;
 int cvmx_cmd_queue_length (int ) ;
 scalar_t__ cvmx_fpa_alloc (int ) ;
 scalar_t__ cvmx_likely (int) ;
 scalar_t__ cvmx_phys_to_ptr (int) ;
 int cvmx_ptr_to_phys (int*) ;
 scalar_t__ cvmx_unlikely (int) ;

__attribute__((used)) static inline cvmx_cmd_queue_result_t cvmx_cmd_queue_write2(cvmx_cmd_queue_id_t queue_id, int use_locking, uint64_t cmd1, uint64_t cmd2)
{
    __cvmx_cmd_queue_state_t *qptr = __cvmx_cmd_queue_get_state(queue_id);

    if (CVMX_ENABLE_PARAMETER_CHECKING)
    {
        if (cvmx_unlikely(qptr == ((void*)0)))
            return CVMX_CMD_QUEUE_INVALID_PARAM;
    }


    if (cvmx_likely(use_locking))
        __cvmx_cmd_queue_lock(queue_id, qptr);




    if (CVMX_CMD_QUEUE_ENABLE_MAX_DEPTH && cvmx_unlikely(qptr->max_depth))
    {
        if (cvmx_unlikely(cvmx_cmd_queue_length(queue_id) > (int)qptr->max_depth))
        {
            if (cvmx_likely(use_locking))
                __cvmx_cmd_queue_unlock(qptr);
            return CVMX_CMD_QUEUE_FULL;
        }
    }


    if (cvmx_likely(qptr->index + 2 < qptr->pool_size_m1))
    {
        uint64_t *ptr = (uint64_t *)cvmx_phys_to_ptr((uint64_t)qptr->base_ptr_div128<<7);
        ptr += qptr->index;
        qptr->index += 2;
        ptr[0] = cmd1;
        ptr[1] = cmd2;
    }
    else
    {
        uint64_t *ptr;


        int count = qptr->pool_size_m1 - qptr->index;

        uint64_t *new_buffer = (uint64_t *)cvmx_fpa_alloc(qptr->fpa_pool);
        if (cvmx_unlikely(new_buffer == ((void*)0)))
        {
            if (cvmx_likely(use_locking))
                __cvmx_cmd_queue_unlock(qptr);
            return CVMX_CMD_QUEUE_NO_MEMORY;
        }
        count--;
        ptr = (uint64_t *)cvmx_phys_to_ptr((uint64_t)qptr->base_ptr_div128<<7);
        ptr += qptr->index;
        *ptr++ = cmd1;
        if (cvmx_likely(count))
            *ptr++ = cmd2;
        *ptr = cvmx_ptr_to_phys(new_buffer);


        qptr->base_ptr_div128 = *ptr >> 7;
        qptr->index = 0;
        if (cvmx_unlikely(count == 0))
        {
            qptr->index = 1;
            new_buffer[0] = cmd2;
        }
    }


    if (cvmx_likely(use_locking))
        __cvmx_cmd_queue_unlock(qptr);
    return CVMX_CMD_QUEUE_SUCCESS;
}
