
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned int uint16_t ;
struct TYPE_4__ {int is_16bit; int vendor; unsigned long long write_timeout; unsigned long long erase_timeout; int size; int num_regions; TYPE_2__* region; int * base_ptr; } ;
typedef TYPE_1__ cvmx_flash_t ;
struct TYPE_5__ {int start_offset; unsigned int num_blocks; int block_size; } ;
typedef TYPE_2__ cvmx_flash_region_t ;





 int CVMX_CLOCK_CORE ;
 int __cvmx_flash_read_cmd (int,int) ;
 void* __cvmx_flash_read_cmd16 (int,int) ;
 int __cvmx_flash_write_cmd (int,int,int) ;
 int cvmx_clock_get_rate (int ) ;
 int cvmx_dprintf (char*,int,int,int,int,...) ;
 TYPE_1__* flash_info ;

__attribute__((used)) static int __cvmx_flash_queury_cfi(int chip_id, void *base_ptr)
{
    int region;
    cvmx_flash_t *flash = flash_info + chip_id;


    flash->base_ptr = base_ptr;
    flash->is_16bit = 1;


    __cvmx_flash_write_cmd(chip_id, 0x00, 0xf0);
    __cvmx_flash_write_cmd(chip_id, 0x55, 0x98);


    if ((__cvmx_flash_read_cmd(chip_id, 0x10) != 'Q') ||
        (__cvmx_flash_read_cmd(chip_id, 0x11) != 'R') ||
        (__cvmx_flash_read_cmd(chip_id, 0x12) != 'Y'))
    {
        flash->base_ptr = ((void*)0);
        return -1;
    }


    flash->vendor = __cvmx_flash_read_cmd16(chip_id, 0x13);



    flash->write_timeout = 1ull << (__cvmx_flash_read_cmd(chip_id, 0x1f) +
                                    __cvmx_flash_read_cmd(chip_id, 0x23));



    flash->erase_timeout = 1ull << (__cvmx_flash_read_cmd(chip_id, 0x21) +
                                    __cvmx_flash_read_cmd(chip_id, 0x25));


    flash->size = 1<<__cvmx_flash_read_cmd(chip_id, 0x27);


    flash->num_regions = __cvmx_flash_read_cmd(chip_id, 0x2c);

    int start_offset = 0;

    for (region=0; region<flash->num_regions; region++)
    {
        cvmx_flash_region_t *rgn_ptr = flash->region + region;
        rgn_ptr->start_offset = start_offset;



        uint16_t blocks = __cvmx_flash_read_cmd16(chip_id, 0x2d + region*4);
        rgn_ptr->num_blocks = 1u + blocks;




        uint16_t size = __cvmx_flash_read_cmd16(chip_id, 0x2d + region*4 + 2);
        if (size == 0)
            rgn_ptr->block_size = 128;
        else
            rgn_ptr->block_size = 256u * size;

        start_offset += rgn_ptr->block_size * rgn_ptr->num_blocks;
    }


    switch (flash_info[chip_id].vendor)
    {
        case 130:
            __cvmx_flash_write_cmd(chip_id, 0x00, 0xf0);
        case 128:
        case 129:
            __cvmx_flash_write_cmd(chip_id, 0x00, 0xff);
            break;
    }


    flash->write_timeout *= cvmx_clock_get_rate(CVMX_CLOCK_CORE) / 1000000;
    flash->erase_timeout *= cvmx_clock_get_rate(CVMX_CLOCK_CORE) / 1000;
    return 0;
}
