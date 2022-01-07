
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ valid; } ;
struct TYPE_4__ {int u32; TYPE_1__ s; } ;
typedef TYPE_2__ cvmx_sriomaintx_port_0_link_resp_t ;


 int CVMX_CIU_SOFT_PRST ;
 int CVMX_SRIOMAINTX_PORT_0_LINK_REQ (int) ;
 int CVMX_SRIOMAINTX_PORT_0_LINK_RESP (int) ;
 int OCTEON_CN63XX_PASS1_X ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;
 scalar_t__ cvmx_srio_config_read32 (int,int ,int,int ,int ,int ,int *) ;
 scalar_t__ cvmx_srio_config_write32 (int,int ,int,int ,int ,int ,int) ;
 int cvmx_wait (int) ;
 int cvmx_write_csr (int ,int) ;

int cvmx_srio_link_rst(int srio_port)
{
    cvmx_sriomaintx_port_0_link_resp_t link_resp;

    if (OCTEON_IS_MODEL(OCTEON_CN63XX_PASS1_X))
        return -1;


    if (cvmx_srio_config_write32(srio_port, 0, -1, 0, 0,
        CVMX_SRIOMAINTX_PORT_0_LINK_REQ(srio_port), 3))
        return -1;

    if (cvmx_srio_config_read32(srio_port, 0, -1, 0, 0,
        CVMX_SRIOMAINTX_PORT_0_LINK_RESP(srio_port), &link_resp.u32))
        return -1;


    while (link_resp.s.valid == 0)
    {

        if (cvmx_srio_config_read32(srio_port, 0, -1, 0, 0,
            CVMX_SRIOMAINTX_PORT_0_LINK_RESP(srio_port), &link_resp.u32))
            return -1;
    }


    cvmx_write_csr(CVMX_CIU_SOFT_PRST, 0x1);

    cvmx_wait(10);


    cvmx_write_csr(CVMX_CIU_SOFT_PRST, 0x0);

    return 0;
}
