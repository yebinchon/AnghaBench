
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int enable_dwb; int enable_timers; } ;
struct TYPE_5__ {int u64; TYPE_1__ s; } ;
typedef TYPE_2__ cvmx_tim_control_t ;
struct TYPE_6__ {int start_time; } ;


 int CVMX_CLOCK_TIM ;
 int CVMX_TIM_REG_FLAGS ;
 int cvmx_clock_get_count (int ) ;
 int cvmx_read_csr (int ) ;
 TYPE_3__ cvmx_tim ;
 int cvmx_write_csr (int ,int ) ;

void cvmx_tim_start(void)
{
    cvmx_tim_control_t control;

    control.u64 = cvmx_read_csr(CVMX_TIM_REG_FLAGS);
    control.s.enable_dwb = 1;
    control.s.enable_timers = 1;


    cvmx_tim.start_time = cvmx_clock_get_count(CVMX_CLOCK_TIM);
    cvmx_write_csr(CVMX_TIM_REG_FLAGS, control.u64);
}
