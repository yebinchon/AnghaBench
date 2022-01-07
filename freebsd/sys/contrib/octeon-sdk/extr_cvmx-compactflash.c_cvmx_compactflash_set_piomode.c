
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int waitm; int ale; int wr_hld; int rd_hld; int we; int oe; int ce; int adr; scalar_t__ pause; scalar_t__ wait; scalar_t__ page; scalar_t__ pages; scalar_t__ pagem; } ;
struct TYPE_7__ {scalar_t__ u64; TYPE_2__ s; } ;
typedef TYPE_3__ cvmx_mio_boot_reg_timx_t ;
struct TYPE_5__ {int tim_mult; int en; int width; scalar_t__ orbit; scalar_t__ oe_ext; scalar_t__ we_ext; scalar_t__ sam; scalar_t__ rd_dly; scalar_t__ dmack; } ;
struct TYPE_8__ {scalar_t__ u64; TYPE_1__ s; } ;
typedef TYPE_4__ cvmx_mio_boot_reg_cfgx_t ;


 int CVMX_CLOCK_SCLK ;
 int CVMX_MIO_BOOT_REG_CFGX (int) ;
 int CVMX_MIO_BOOT_REG_TIMX (int) ;
 int FLASH_RoundUP (int,int) ;
 int cvmx_clock_get_rate (int ) ;
 scalar_t__ cvmx_read_csr (int ) ;
 int cvmx_write_csr (int ,scalar_t__) ;

void cvmx_compactflash_set_piomode(int cs0, int cs1, int pio_mode)
{
    cvmx_mio_boot_reg_cfgx_t mio_boot_reg_cfg;
    cvmx_mio_boot_reg_timx_t mio_boot_reg_tim;
    int cs;
    int clocks_us;
    int tim_mult;
    int use_iordy;
    int t1;
    int t2;
    int t2i;
    int t4;
    int t6;
    int t6z;
    int t9;



    use_iordy = 1;


    switch(pio_mode) {
        case 6:

            use_iordy = 0;
            t1 = 10;
            t2 = 55;
            t2i = 20;
            t4 = 5;
            t6 = 5;
            t6z = 20;
            t9 = 10;
            break;
        case 5:

            use_iordy = 0;
            t1 = 15;
            t2 = 65;
            t2i = 25;
            t4 = 5;
            t6 = 5;
            t6z = 20;
            t9 = 10;
            break;
        case 4:
            t1 = 25;
            t2 = 70;
            t2i = 25;
            t4 = 10;
            t6 = 5;
            t6z = 30;
            t9 = 10;
            break;
        case 3:
            t1 = 30;
            t2 = 80;
            t2i = 70;
            t4 = 10;
            t6 = 5;
            t6z = 30;
            t9 = 10;
            break;
        case 2:
            t1 = 30;
            t2 = 100;
            t2i = 0;
            t4 = 15;
            t6 = 5;
            t6z = 30;
            t9 = 10;
            break;
        case 1:
            t1 = 50;
            t2 = 125;
            t2i = 0;
            t4 = 20;
            t6 = 5;
            t6z = 30;
            t9 = 15;
            break;
        default:
            t1 = 70;
            t2 = 165;
            t2i = 0;
            t4 = 30;
            t6 = 5;
            t6z = 30;
            t9 = 20;
            break;
    }

    clocks_us = FLASH_RoundUP(cvmx_clock_get_rate(CVMX_CLOCK_SCLK), 1000000);



    t1 = FLASH_RoundUP(t1 * clocks_us, 1000);
    if (t1)
        t1--;
    t2 = FLASH_RoundUP(t2 * clocks_us, 1000);
    if (t2)
        t2--;
    t2i = FLASH_RoundUP(t2i * clocks_us, 1000);
    if (t2i)
        t2i--;
    t4 = FLASH_RoundUP(t4 * clocks_us, 1000);
    if (t4)
        t4--;
    t6 = FLASH_RoundUP(t6 * clocks_us, 1000);
    if (t6)
        t6--;
    t6z = FLASH_RoundUP(t6z * clocks_us, 1000);
    if (t6z)
        t6z--;
    t9 = FLASH_RoundUP(t9 * clocks_us, 1000);
    if (t9)
        t9--;




    tim_mult = 1;
    while (t2 >= 1<<6)
    {
        t1 = FLASH_RoundUP(t1, 2);
        t2 = FLASH_RoundUP(t2, 2);
        t2i = FLASH_RoundUP(t2i, 2);
        t4 = FLASH_RoundUP(t4, 2);
        t6 = FLASH_RoundUP(t6, 2);
        t6z = FLASH_RoundUP(t6z, 2);
        t9 = FLASH_RoundUP(t9, 2);
        tim_mult *= 2;
    }

    cs = cs0;
    do {
        mio_boot_reg_cfg.u64 = cvmx_read_csr(CVMX_MIO_BOOT_REG_CFGX(cs));
        mio_boot_reg_cfg.s.dmack = 0;
        switch(tim_mult) {
            case 1:
                mio_boot_reg_cfg.s.tim_mult = 1;
                break;
            case 2:
                mio_boot_reg_cfg.s.tim_mult = 2;
                break;
            case 4:
                mio_boot_reg_cfg.s.tim_mult = 0;
                break;
            case 8:
            default:
                mio_boot_reg_cfg.s.tim_mult = 3;
                break;
        }
        mio_boot_reg_cfg.s.rd_dly = 0;
        mio_boot_reg_cfg.s.sam = 0;
        mio_boot_reg_cfg.s.we_ext = 0;
        mio_boot_reg_cfg.s.oe_ext = 0;
        mio_boot_reg_cfg.s.en = 1;
        mio_boot_reg_cfg.s.orbit = 0;
        mio_boot_reg_cfg.s.width = 1;
        cvmx_write_csr(CVMX_MIO_BOOT_REG_CFGX(cs), mio_boot_reg_cfg.u64);
        if(cs == cs0)
            cs = cs1;
        else
            cs = cs0;
    } while(cs != cs0);

    mio_boot_reg_tim.u64 = 0;
    mio_boot_reg_tim.s.pagem = 0;
    mio_boot_reg_tim.s.waitm = use_iordy;
    mio_boot_reg_tim.s.pages = 0;
    mio_boot_reg_tim.s.ale = 8;
    mio_boot_reg_tim.s.page = 0;
    mio_boot_reg_tim.s.wait = 0;
    mio_boot_reg_tim.s.pause = 0;
    mio_boot_reg_tim.s.wr_hld = t9;
    mio_boot_reg_tim.s.rd_hld = t9;
    mio_boot_reg_tim.s.we = t2;
    mio_boot_reg_tim.s.oe = t2;
    mio_boot_reg_tim.s.ce = t1;
    mio_boot_reg_tim.s.adr = 1;


    cvmx_write_csr(CVMX_MIO_BOOT_REG_TIMX(cs0), mio_boot_reg_tim.u64);
    cvmx_write_csr(CVMX_MIO_BOOT_REG_TIMX(cs1), mio_boot_reg_tim.u64);
}
