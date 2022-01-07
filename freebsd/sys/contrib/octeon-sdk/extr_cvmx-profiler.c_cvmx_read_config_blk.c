
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_3__ {int sample_count; int events; } ;
struct TYPE_4__ {char* config_blk_base_addr; TYPE_1__ cfg_blk; int read_cfg_blk; } ;


 int EVENT_BUFFER_CONFIG_BLOCK ;
 int PRINTF (char*,int ,int ) ;
 int cvmx_atomic_set32 (int *,int) ;
 int cvmx_config_block_t ;
 scalar_t__ cvmx_get_memory_addr (int ) ;
 TYPE_2__ eccb ;
 int events ;
 int memcpy (int *,char*,int) ;
 int offsetof (int ,int ) ;

__attribute__((used)) static
void cvmx_read_config_blk(void)
{
    eccb.config_blk_base_addr = (char *)cvmx_get_memory_addr(EVENT_BUFFER_CONFIG_BLOCK);
    memcpy(&(eccb.cfg_blk.events), eccb.config_blk_base_addr + offsetof(cvmx_config_block_t, events), sizeof(int64_t));


    cvmx_atomic_set32(&eccb.read_cfg_blk,1);
    PRINTF("cfg_blk.events=%lu, sample_count=%ld\n", eccb.cfg_blk.events, eccb.cfg_blk.sample_count);
}
