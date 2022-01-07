
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


typedef unsigned long long uint64_t ;
struct TYPE_8__ {int st_en; } ;
struct TYPE_10__ {void* u64; TYPE_2__ s; } ;
typedef TYPE_4__ cvmx_stxx_com_ctl_t ;
struct TYPE_7__ {int inf_en; int st_en; } ;
struct TYPE_11__ {void* u64; TYPE_1__ s; } ;
typedef TYPE_5__ cvmx_srxx_com_ctl_t ;
struct TYPE_9__ {scalar_t__ stxcal; } ;
struct TYPE_12__ {void* u64; TYPE_3__ s; } ;
typedef TYPE_6__ cvmx_spxx_clk_stat_t ;
typedef int cvmx_spi_mode_t ;


 int CVMX_CLOCK_CORE ;
 int CVMX_SPI_MODE_RX_HALFPLEX ;
 int CVMX_SPI_MODE_TX_HALFPLEX ;
 int CVMX_SPXX_CLK_STAT (int) ;
 int CVMX_SRXX_COM_CTL (int) ;
 int CVMX_STXX_COM_CTL (int) ;
 int cvmx_clock_get_rate (int ) ;
 int cvmx_dprintf (char*,int,...) ;
 unsigned long long cvmx_get_cycle () ;
 void* cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,void*) ;

int cvmx_spi_calendar_sync_cb(int interface, cvmx_spi_mode_t mode, int timeout)
{
    uint64_t MS = cvmx_clock_get_rate(CVMX_CLOCK_CORE) / 1000;
    if (mode & CVMX_SPI_MODE_RX_HALFPLEX) {

        cvmx_srxx_com_ctl_t srxx_com_ctl;
        cvmx_dprintf ("SPI%d: Rx is synchronized, start sending calendar data\n", interface);
        srxx_com_ctl.u64 = cvmx_read_csr(CVMX_SRXX_COM_CTL(interface));
        srxx_com_ctl.s.inf_en = 1;
        srxx_com_ctl.s.st_en = 1;
        cvmx_write_csr (CVMX_SRXX_COM_CTL(interface), srxx_com_ctl.u64);
    }

    if (mode & CVMX_SPI_MODE_TX_HALFPLEX) {



        cvmx_spxx_clk_stat_t stat;
        uint64_t timeout_time;
        cvmx_stxx_com_ctl_t stxx_com_ctl;
        stxx_com_ctl.u64 = 0;
        stxx_com_ctl.s.st_en = 1;
        cvmx_write_csr (CVMX_STXX_COM_CTL(interface), stxx_com_ctl.u64);


        cvmx_dprintf ("SPI%d: Waiting to sync on STX[%d] STAT\n", interface, interface);
        timeout_time = cvmx_get_cycle() + 1000ull * MS * timeout;

        do {
            stat.u64 = cvmx_read_csr (CVMX_SPXX_CLK_STAT (interface));
            if (cvmx_get_cycle() > timeout_time)
            {
                cvmx_dprintf ("SPI%d: Timeout\n", interface);
                return -1;
            }
        } while (stat.s.stxcal == 0);
    }

    return 0;
}
