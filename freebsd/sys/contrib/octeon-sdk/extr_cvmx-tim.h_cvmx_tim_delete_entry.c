
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef scalar_t__ int64_t ;
typedef int cvmx_tim_status_t ;
struct TYPE_3__ {scalar_t__* timer_entry_ptr; scalar_t__ const commit_cycles; } ;
typedef TYPE_1__ cvmx_tim_delete_t ;


 int CVMX_CLOCK_TIM ;
 int CVMX_TIM_STATUS_BUSY ;
 int CVMX_TIM_STATUS_SUCCESS ;
 scalar_t__ cvmx_clock_get_count (int ) ;

__attribute__((used)) static inline cvmx_tim_status_t cvmx_tim_delete_entry(cvmx_tim_delete_t *delete_info)
{
    const uint64_t cycles = cvmx_clock_get_count(CVMX_CLOCK_TIM);

    if ((int64_t)(cycles - delete_info->commit_cycles) < 0)
    {

        *delete_info->timer_entry_ptr = 0;
        return CVMX_TIM_STATUS_SUCCESS;
    }
    else
    {

        return CVMX_TIM_STATUS_BUSY;
    }
}
