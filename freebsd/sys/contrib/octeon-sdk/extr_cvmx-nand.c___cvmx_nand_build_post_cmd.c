
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ cvmx_nand_status_t ;
struct TYPE_7__ {int fifteen; } ;
struct TYPE_6__ {int three; } ;
struct TYPE_8__ {TYPE_2__ bus_rel; TYPE_1__ chip_dis; } ;
typedef TYPE_3__ cvmx_nand_cmd_t ;
typedef int cmd ;


 int CVMX_NAND_LOG_CALLED () ;
 int CVMX_NAND_RETURN (scalar_t__) ;
 scalar_t__ CVMX_NAND_SUCCESS ;
 int CVMX_NDF_DRBELL ;
 scalar_t__ cvmx_nand_submit (TYPE_3__) ;
 int cvmx_write_csr (int ,int) ;
 int memset (TYPE_3__*,int ,int) ;

__attribute__((used)) static inline cvmx_nand_status_t __cvmx_nand_build_post_cmd(void)
{
    cvmx_nand_status_t result;
    cvmx_nand_cmd_t cmd;

    CVMX_NAND_LOG_CALLED();


    memset(&cmd, 0, sizeof(cmd));
    cmd.chip_dis.three = 3;
    result = cvmx_nand_submit(cmd);
    if (result)
        CVMX_NAND_RETURN(result);


    memset(&cmd, 0, sizeof(cmd));
    cmd.bus_rel.fifteen = 15;
    result = cvmx_nand_submit(cmd);
    if (result)
        CVMX_NAND_RETURN(result);


    cvmx_write_csr(CVMX_NDF_DRBELL, 1);
    CVMX_NAND_RETURN(CVMX_NAND_SUCCESS);
}
