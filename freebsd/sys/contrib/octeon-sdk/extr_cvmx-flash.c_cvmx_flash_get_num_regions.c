
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_regions; } ;


 TYPE_1__* flash_info ;

int cvmx_flash_get_num_regions(int chip_id)
{
    return flash_info[chip_id].num_regions;
}
