
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int __cvmx_flash_read_cmd (int,int) ;

__attribute__((used)) static uint16_t __cvmx_flash_read_cmd16(int chip_id, int offset)
{
    uint16_t v = __cvmx_flash_read_cmd(chip_id, offset);
    v |= __cvmx_flash_read_cmd(chip_id, offset + 1)<<8;
    return v;
}
