
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {scalar_t__ is_16bit; } ;


 int __cvmx_flash_read8 (int,int) ;
 TYPE_1__* flash_info ;

__attribute__((used)) static uint8_t __cvmx_flash_read_cmd(int chip_id, int offset)
{
    if (flash_info[chip_id].is_16bit)
        offset<<=1;
    return __cvmx_flash_read8(chip_id, offset);
}
