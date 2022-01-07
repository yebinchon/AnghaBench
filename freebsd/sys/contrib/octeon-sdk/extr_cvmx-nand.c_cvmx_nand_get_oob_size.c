
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int oob_size; } ;


 int CVMX_NAND_INVALID_PARAM ;
 int CVMX_NAND_LOG_CALLED () ;
 int CVMX_NAND_LOG_PARAM (char*,int) ;
 int CVMX_NAND_RETURN (int ) ;
 TYPE_1__* cvmx_nand_state ;

int cvmx_nand_get_oob_size(int chip)
{
    CVMX_NAND_LOG_CALLED();
    CVMX_NAND_LOG_PARAM("%d", chip);

    if ((chip < 0) || (chip > 7))
        CVMX_NAND_RETURN(CVMX_NAND_INVALID_PARAM);

    CVMX_NAND_RETURN(cvmx_nand_state[chip].oob_size);
}
