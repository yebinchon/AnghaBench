
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ srio; } ;
struct TYPE_10__ {TYPE_2__ s; void* u64; } ;
typedef TYPE_4__ cvmx_sriox_status_reg_t ;
struct TYPE_9__ {int qlm_spd; int qlm_cfg; } ;
struct TYPE_11__ {TYPE_3__ s; void* u64; } ;
typedef TYPE_5__ cvmx_mio_qlmx_cfg_t ;
struct TYPE_7__ {int speed; scalar_t__ mode; } ;
struct TYPE_12__ {TYPE_1__ s; void* u64; } ;
typedef TYPE_6__ cvmx_gmxx_inf_mode_t ;


 int CVMX_GMXX_INF_MODE (int ) ;
 int CVMX_MIO_QLMX_CFG (int) ;
 int CVMX_SRIOX_STATUS_REG (int) ;
 int OCTEON_CN61XX ;
 int OCTEON_CN63XX ;
 int OCTEON_CN66XX ;
 int OCTEON_CN66XX_PASS1_0 ;
 int OCTEON_CN68XX ;
 int OCTEON_CNF71XX ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;
 void* cvmx_read_csr (int ) ;

int cvmx_qlm_get_status(int qlm)
{
    cvmx_mio_qlmx_cfg_t qlmx_cfg;

    if (OCTEON_IS_MODEL(OCTEON_CN68XX))
    {
        qlmx_cfg.u64 = cvmx_read_csr(CVMX_MIO_QLMX_CFG(qlm));

        if (qlmx_cfg.s.qlm_spd == 15)
            return -1;

        switch (qlmx_cfg.s.qlm_cfg)
        {
            case 0:
                return 3;
            case 1:
                return 9;
            case 2:
                return 1;
            case 3:
                return 2;
            case 7:
                return 10;
            default: return -1;
        }
    }
    else if (OCTEON_IS_MODEL(OCTEON_CN66XX))
    {
        qlmx_cfg.u64 = cvmx_read_csr(CVMX_MIO_QLMX_CFG(qlm));

        if (qlmx_cfg.s.qlm_spd == 15)
            return -1;

        switch (qlmx_cfg.s.qlm_cfg)
        {
            case 0x9:
                return 1;
            case 0xb:
                return 2;
            case 0x0:
            case 0x8:
            case 0x2:
            case 0xa:
                return 3;
            case 0x1:
            case 0x3:
                return 4;
            case 0x4:
            case 0x6:
                return 5;
            case 0x5:
            case 0x7:
                if (!OCTEON_IS_MODEL(OCTEON_CN66XX_PASS1_0))
                    return 6;
            default:
                return -1;
        }
    }
    else if (OCTEON_IS_MODEL(OCTEON_CN63XX))
    {
        cvmx_sriox_status_reg_t status_reg;

        if (qlm == 2)
        {
            cvmx_gmxx_inf_mode_t inf_mode;
            inf_mode.u64 = cvmx_read_csr(CVMX_GMXX_INF_MODE(0));
            if (inf_mode.s.speed == 15)
                return -1;
            else if(inf_mode.s.mode == 0)
                return 1;
            else
                return 2;
        }
        status_reg.u64 = cvmx_read_csr(CVMX_SRIOX_STATUS_REG(qlm));
        if (status_reg.s.srio)
            return 4;
        else
            return 3;
    }
    else if (OCTEON_IS_MODEL(OCTEON_CN61XX))
    {
        qlmx_cfg.u64 = cvmx_read_csr(CVMX_MIO_QLMX_CFG(qlm));

        if (qlmx_cfg.s.qlm_spd == 15)
            return -1;

        switch(qlm)
        {
            case 0:
                switch (qlmx_cfg.s.qlm_cfg)
                {
                    case 0:
                        return 3;
                    case 2:
                        return 1;
                    case 3:
                        return 2;
                    default: return -1;
                }
                break;
            case 1:
                switch (qlmx_cfg.s.qlm_cfg)
                {
                    case 0:
                        return 7;
                    case 1:
                        return 8;
                    default: return -1;
                }
                break;
            case 2:
                switch (qlmx_cfg.s.qlm_cfg)
                {
                    case 2:
                        return 1;
                    case 3:
                        return 2;
                    default: return -1;
                }
                break;
        }
    }
    else if (OCTEON_IS_MODEL(OCTEON_CNF71XX))
    {
        qlmx_cfg.u64 = cvmx_read_csr(CVMX_MIO_QLMX_CFG(qlm));

        if (qlmx_cfg.s.qlm_spd == 15)
            return -1;

        switch(qlm)
        {
            case 0:
                if (qlmx_cfg.s.qlm_cfg == 2)
                    return 1;
                break;
            case 1:
                switch (qlmx_cfg.s.qlm_cfg)
                {
                    case 0:
                        return 7;
                    case 1:
                        return 8;
                    default: return -1;
                }
                break;
        }
    }
    return -1;
}
