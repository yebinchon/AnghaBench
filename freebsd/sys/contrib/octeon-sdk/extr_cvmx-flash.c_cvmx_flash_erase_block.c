
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_4__ {int vendor; scalar_t__ erase_timeout; TYPE_1__* region; } ;
struct TYPE_3__ {int start_offset; int block_size; } ;





 int __cvmx_flash_read8 (int,int) ;
 int __cvmx_flash_write8 (int,int,int) ;
 int __cvmx_flash_write_cmd (int,int,int) ;
 int cvmx_dprintf (char*,...) ;
 scalar_t__ cvmx_get_cycle () ;
 int cvmx_spinlock_lock (int *) ;
 int cvmx_spinlock_unlock (int *) ;
 TYPE_2__* flash_info ;
 int flash_lock ;

int cvmx_flash_erase_block(int chip_id, int region, int block)
{
    cvmx_spinlock_lock(&flash_lock);





    int offset = flash_info[chip_id].region[region].start_offset +
                block * flash_info[chip_id].region[region].block_size;

    switch (flash_info[chip_id].vendor)
    {
        case 130:
        {

            __cvmx_flash_write_cmd(chip_id, 0x00, 0xf0);
            __cvmx_flash_write_cmd(chip_id, 0x555, 0xaa);
            __cvmx_flash_write_cmd(chip_id, 0x2aa, 0x55);
            __cvmx_flash_write_cmd(chip_id, 0x555, 0x80);
            __cvmx_flash_write_cmd(chip_id, 0x555, 0xaa);
            __cvmx_flash_write_cmd(chip_id, 0x2aa, 0x55);
            __cvmx_flash_write8(chip_id, offset, 0x30);


            uint8_t status = __cvmx_flash_read8(chip_id, offset);
            uint64_t start_cycle = cvmx_get_cycle();
            while (1)
            {


                uint8_t old_status = status;
                status = __cvmx_flash_read8(chip_id, offset);
                uint8_t toggle = status ^ old_status;


                if (toggle & (1<<6))
                {

                    if (status & (1<<5))
                    {

                        old_status = __cvmx_flash_read8(chip_id, offset);
                        status = __cvmx_flash_read8(chip_id, offset);
                        toggle = status ^ old_status;


                        if (toggle & (1<<6))
                        {
                            cvmx_dprintf("cvmx-flash: Hardware timeout erasing block\n");
                            cvmx_spinlock_unlock(&flash_lock);
                            return -1;
                        }
                        else
                            break;
                    }
                }
                else
                    break;

                if (cvmx_get_cycle() > start_cycle + flash_info[chip_id].erase_timeout)
                {
                    cvmx_dprintf("cvmx-flash: Timeout erasing block\n");
                    cvmx_spinlock_unlock(&flash_lock);
                    return -1;
                }
            }

            __cvmx_flash_write_cmd(chip_id, 0x00, 0xf0);
            cvmx_spinlock_unlock(&flash_lock);
            return 0;
        }
        case 128:
        case 129:
        {

            __cvmx_flash_write_cmd(chip_id, 0x00, 0xff);
            __cvmx_flash_write8(chip_id, offset, 0x20);
            __cvmx_flash_write8(chip_id, offset, 0xd0);


            uint8_t status = __cvmx_flash_read8(chip_id, offset);
            uint64_t start_cycle = cvmx_get_cycle();
            while ((status & 0x80) == 0)
            {
                if (cvmx_get_cycle() > start_cycle + flash_info[chip_id].erase_timeout)
                {
                    cvmx_dprintf("cvmx-flash: Timeout erasing block\n");
                    cvmx_spinlock_unlock(&flash_lock);
                    return -1;
                }
                status = __cvmx_flash_read8(chip_id, offset);
            }


            if (status & 0x7f)
            {
                cvmx_dprintf("cvmx-flash: Hardware failure erasing block\n");
                cvmx_spinlock_unlock(&flash_lock);
                return -1;
            }

            __cvmx_flash_write_cmd(chip_id, 0x00, 0xff);
            cvmx_spinlock_unlock(&flash_lock);
            return 0;
        }
    }

    cvmx_dprintf("cvmx-flash: Unsupported flash vendor\n");
    cvmx_spinlock_unlock(&flash_lock);
    return -1;
}
