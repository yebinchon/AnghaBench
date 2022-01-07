
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_9__ {int core; int pc; } ;
typedef TYPE_3__ cvmx_sample_entry_t ;
struct TYPE_8__ {scalar_t__ head; scalar_t__ end; scalar_t__ data; int sample_count; } ;
struct TYPE_10__ {scalar_t__ pcpu_data; TYPE_2__ pcpu_blk_info; } ;
typedef TYPE_4__ cvmx_ringbuf_t ;
struct TYPE_7__ {scalar_t__* pcpu_base_addr; } ;
struct TYPE_12__ {TYPE_1__ cfg_blk; } ;
struct TYPE_11__ {int sample_count; } ;


 int COP0_EPC ;
 int CVMX_MF_COP0 (int ,int ) ;
 int EVENT_PERCPU_BUFFER_SIZE ;
 int PRINTF (char*,int,int ,int ) ;
 int cvmx_atomic_add64 (int *,int) ;
 int cvmx_get_core_num () ;
 int cvmx_init_pcpu_block (int,int ) ;
 int cvmx_read_config_blk () ;
 scalar_t__ cvmx_unlikely (int) ;
 TYPE_6__ eccb ;
 TYPE_5__* pcpu_cfg_blk ;

__attribute__((used)) static
void cvmx_add_sample_to_buffer(void)
{
    uint32_t epc;
    int cpu = cvmx_get_core_num();
    CVMX_MF_COP0(epc, COP0_EPC);

    cvmx_ringbuf_t *cpu_buf = (cvmx_ringbuf_t *) eccb.cfg_blk.pcpu_base_addr[cpu];






    if (cvmx_unlikely(!cpu_buf->pcpu_blk_info.head && !cpu_buf->pcpu_blk_info.end)) {


        cvmx_read_config_blk();
        cvmx_init_pcpu_block(cpu, EVENT_PERCPU_BUFFER_SIZE);
    }


    if (cpu_buf->pcpu_blk_info.head == cpu_buf->pcpu_blk_info.end)
        cpu_buf->pcpu_blk_info.head = cpu_buf->pcpu_blk_info.data = cpu_buf->pcpu_data;


    cvmx_sample_entry_t *sample = (cvmx_sample_entry_t *) cpu_buf->pcpu_blk_info.data;
    sample->pc = epc;
    sample->core = cpu;


    cpu_buf->pcpu_blk_info.sample_count++;
    cpu_buf->pcpu_blk_info.data += sizeof(cvmx_sample_entry_t);
    cpu_buf->pcpu_blk_info.head = cpu_buf->pcpu_blk_info.data;


    cvmx_atomic_add64(&(pcpu_cfg_blk->sample_count), 1);

    PRINTF("the core%d:pc 0x%016lx, sample_count=%ld\n", cpu, sample->pc, cpu_buf->pcpu_blk_info.sample_count);
}
