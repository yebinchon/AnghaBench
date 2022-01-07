
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int is_16bit; scalar_t__ base_ptr; } ;


 TYPE_1__* flash_info ;

__attribute__((used)) static void __cvmx_flash_write_cmd(int chip_id, int offset, uint8_t data)
{
    volatile uint8_t *flash_ptr = (volatile uint8_t *)flash_info[chip_id].base_ptr;
    flash_ptr[offset<<flash_info[chip_id].is_16bit] = data;
}
