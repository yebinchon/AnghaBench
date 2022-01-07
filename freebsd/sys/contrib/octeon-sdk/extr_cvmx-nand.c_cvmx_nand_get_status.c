
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int flags; } ;


 int CVMX_NAND_INVALID_PARAM ;
 int CVMX_NAND_LOG_CALLED () ;
 int CVMX_NAND_LOG_PARAM (char*,int) ;
 int CVMX_NAND_RETURN (int) ;
 int CVMX_NAND_STATE_16BIT ;
 int NAND_COMMAND_STATUS ;
 int __cvmx_nand_low_level_read (int,int ,int ,int ,int ,int ,int) ;
 scalar_t__ cvmx_nand_buffer ;
 TYPE_1__* cvmx_nand_state ;
 int cvmx_ptr_to_phys (scalar_t__) ;

int cvmx_nand_get_status(int chip)
{
    int status;
    int offset = !!(cvmx_nand_state[chip].flags & CVMX_NAND_STATE_16BIT);

    CVMX_NAND_LOG_CALLED();
    CVMX_NAND_LOG_PARAM("%d", chip);

    if ((chip < 0) || (chip > 7))
        CVMX_NAND_RETURN(CVMX_NAND_INVALID_PARAM);

    *((uint8_t*)cvmx_nand_buffer + offset) = 0xff;
    status = __cvmx_nand_low_level_read(chip, NAND_COMMAND_STATUS, 0, 0, 0, cvmx_ptr_to_phys(cvmx_nand_buffer), 8);
    if (status > 0)
        status = *((uint8_t*)cvmx_nand_buffer + offset);

    CVMX_NAND_RETURN(status);
}
