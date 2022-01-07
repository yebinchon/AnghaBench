
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int ULL ;
struct TYPE_2__ {int page_size; int flags; } ;


 int CVMX_NAND_INVALID_PARAM ;
 int CVMX_NAND_LOG_CALLED () ;
 int CVMX_NAND_LOG_PARAM (char*,int) ;
 int CVMX_NAND_RETURN (int) ;
 int CVMX_NAND_STATE_16BIT ;
 int NAND_COMMAND_READ ;
 int NAND_COMMAND_READ_FIN ;
 int __cvmx_nand_get_address_cycles (int) ;
 int __cvmx_nand_low_level_read (int,int ,int ,int,int ,int,int) ;
 TYPE_1__* cvmx_nand_state ;

int cvmx_nand_page_read(int chip, uint64_t nand_address, uint64_t buffer_address, int buffer_length)
{
    int bytes;

    CVMX_NAND_LOG_CALLED();
    CVMX_NAND_LOG_PARAM("%d", chip);
    CVMX_NAND_LOG_PARAM("0x%llx", (ULL)nand_address);
    CVMX_NAND_LOG_PARAM("0x%llx", (ULL)buffer_address);
    CVMX_NAND_LOG_PARAM("%d", buffer_length);

    if ((chip < 0) || (chip > 7))
        CVMX_NAND_RETURN(CVMX_NAND_INVALID_PARAM);
    if (!cvmx_nand_state[chip].page_size)
        CVMX_NAND_RETURN(CVMX_NAND_INVALID_PARAM);
    if (!buffer_address)
        CVMX_NAND_RETURN(CVMX_NAND_INVALID_PARAM);
    if (buffer_address & 7)
        CVMX_NAND_RETURN(CVMX_NAND_INVALID_PARAM);
    if (buffer_length & 7)
        CVMX_NAND_RETURN(CVMX_NAND_INVALID_PARAM);
    if (!buffer_length)
        CVMX_NAND_RETURN(CVMX_NAND_INVALID_PARAM);


    if (cvmx_nand_state[chip].flags & CVMX_NAND_STATE_16BIT)
            nand_address = (nand_address & ~(cvmx_nand_state[chip].page_size - 1)) | ((nand_address & (cvmx_nand_state[chip].page_size - 1)) >> 1);

    bytes = __cvmx_nand_low_level_read(chip, NAND_COMMAND_READ, __cvmx_nand_get_address_cycles(chip), nand_address, NAND_COMMAND_READ_FIN, buffer_address, buffer_length);
    CVMX_NAND_RETURN(bytes);
}
