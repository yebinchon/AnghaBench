
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int cvmx_nand_status_t ;
struct TYPE_2__ {int page_size; } ;


 int CVMX_NAND_INVALID_PARAM ;
 int CVMX_NAND_LOG_CALLED () ;
 int CVMX_NAND_LOG_PARAM (char*,int) ;
 int CVMX_NAND_NO_MEMORY ;
 int CVMX_NAND_RETURN (int ) ;
 int CVMX_NAND_SUCCESS ;
 int NAND_COMMAND_RESET ;
 scalar_t__ __cvmx_nand_build_post_cmd () ;
 scalar_t__ __cvmx_nand_build_pre_cmd (int,int ,int ,int ,int ) ;
 scalar_t__ __wait_for_busy_done (int) ;
 TYPE_1__* cvmx_nand_state ;

cvmx_nand_status_t cvmx_nand_reset(int chip)
{
    CVMX_NAND_LOG_CALLED();
    CVMX_NAND_LOG_PARAM("%d", chip);

    if ((chip < 0) || (chip > 7))
        CVMX_NAND_RETURN(CVMX_NAND_INVALID_PARAM);
    if (!cvmx_nand_state[chip].page_size)
        CVMX_NAND_RETURN(CVMX_NAND_INVALID_PARAM);

    if (__cvmx_nand_build_pre_cmd(chip, NAND_COMMAND_RESET, 0, 0, 0))
        CVMX_NAND_RETURN(CVMX_NAND_NO_MEMORY);


    if (__wait_for_busy_done(chip))
        CVMX_NAND_RETURN(CVMX_NAND_NO_MEMORY);

    if (__cvmx_nand_build_post_cmd())
        CVMX_NAND_RETURN(CVMX_NAND_NO_MEMORY);

    CVMX_NAND_RETURN(CVMX_NAND_SUCCESS);
}
