
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int cvmx_flash_region_t ;
struct TYPE_2__ {int const* region; } ;


 TYPE_1__* flash_info ;

const cvmx_flash_region_t *cvmx_flash_get_region_info(int chip_id, int region)
{
    return flash_info[chip_id].region + region;
}
