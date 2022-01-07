
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ enable_timers; scalar_t__ enable_dwb; } ;
struct TYPE_4__ {int u64; TYPE_1__ s; } ;
typedef TYPE_2__ cvmx_tim_control_t ;


 int CVMX_TIM_REG_FLAGS ;
 int cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,int ) ;

void cvmx_tim_stop(void)
{
    cvmx_tim_control_t control;
    control.u64 = cvmx_read_csr(CVMX_TIM_REG_FLAGS);
    control.s.enable_dwb = 0;
    control.s.enable_timers = 0;
    cvmx_write_csr(CVMX_TIM_REG_FLAGS, control.u64);
}
