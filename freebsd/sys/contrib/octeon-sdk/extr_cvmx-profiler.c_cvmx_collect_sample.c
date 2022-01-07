
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int events; } ;
struct TYPE_4__ {TYPE_1__ cfg_blk; int read_cfg_blk; } ;


 int EVENT_PERCPU_BUFFER_SIZE ;
 int cvmx_add_sample_to_buffer () ;
 int cvmx_get_core_num () ;
 int cvmx_init_pcpu_block (int ,int ) ;
 int cvmx_read_config_blk () ;
 int cvmx_reset_perf_counter (int ,int ) ;
 TYPE_2__ eccb ;
 scalar_t__ read_percpu_block ;

void cvmx_collect_sample(void)
{
    if (!eccb.read_cfg_blk)
        cvmx_read_config_blk();

    if (read_percpu_block)
        cvmx_init_pcpu_block(cvmx_get_core_num(), EVENT_PERCPU_BUFFER_SIZE);

    cvmx_add_sample_to_buffer();
    cvmx_reset_perf_counter(0, eccb.cfg_blk.events);
}
