
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int two; int r_b; int n; } ;
struct TYPE_6__ {TYPE_1__ wait; } ;
typedef TYPE_2__ cvmx_nand_cmd_t ;
typedef int cmd ;


 int CVMX_NAND_LOG_CALLED () ;
 int CVMX_NAND_LOG_PARAM (char*,int) ;
 int CVMX_NAND_NO_MEMORY ;
 int CVMX_NAND_RETURN (int ) ;
 int CVMX_NAND_SUCCESS ;
 scalar_t__ cvmx_nand_submit (TYPE_2__) ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static int __wait_for_busy_done(int chip)
{
    cvmx_nand_cmd_t cmd;

    CVMX_NAND_LOG_CALLED();
    CVMX_NAND_LOG_PARAM("%d", chip);

    memset(&cmd, 0, sizeof(cmd));
    cmd.wait.two = 2;
    cmd.wait.r_b=0;
    cmd.wait.n = 2;






    if (cvmx_nand_submit(cmd))
        CVMX_NAND_RETURN(CVMX_NAND_NO_MEMORY);
    if (cvmx_nand_submit(cmd))
        CVMX_NAND_RETURN(CVMX_NAND_NO_MEMORY);
    if (cvmx_nand_submit(cmd))
        CVMX_NAND_RETURN(CVMX_NAND_NO_MEMORY);
    if (cvmx_nand_submit(cmd))
        CVMX_NAND_RETURN(CVMX_NAND_NO_MEMORY);
    cmd.wait.r_b=1;
    if (cvmx_nand_submit(cmd))
        CVMX_NAND_RETURN(CVMX_NAND_NO_MEMORY);

    CVMX_NAND_RETURN(CVMX_NAND_SUCCESS);
}
