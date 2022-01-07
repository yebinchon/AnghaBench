
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int cvmx_cmd_queue_id_t ;
typedef int __cvmx_cmd_queue_state_t ;
struct TYPE_2__ {int * state; } ;


 int CVMX_CMD_QUEUE_END ;
 scalar_t__ CVMX_ENABLE_PARAMETER_CHECKING ;
 size_t __cvmx_cmd_queue_get_index (int) ;
 TYPE_1__* __cvmx_cmd_queue_state_ptr ;
 scalar_t__ cvmx_unlikely (int) ;

__attribute__((used)) static inline __cvmx_cmd_queue_state_t *__cvmx_cmd_queue_get_state(cvmx_cmd_queue_id_t queue_id)
{
    if (CVMX_ENABLE_PARAMETER_CHECKING)
    {
        if (cvmx_unlikely(queue_id >= CVMX_CMD_QUEUE_END))
            return ((void*)0);
        if (cvmx_unlikely((queue_id & 0xffff) >= 256))
            return ((void*)0);
    }
    return &__cvmx_cmd_queue_state_ptr->state[__cvmx_cmd_queue_get_index(queue_id)];
}
