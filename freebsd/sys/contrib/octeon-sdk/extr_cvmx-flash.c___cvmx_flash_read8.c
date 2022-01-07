
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int volatile uint8_t ;
struct TYPE_2__ {scalar_t__ base_ptr; } ;


 TYPE_1__* flash_info ;

__attribute__((used)) static uint8_t __cvmx_flash_read8(int chip_id, int offset)
{
    return *(volatile uint8_t *)(flash_info[chip_id].base_ptr + offset);
}
