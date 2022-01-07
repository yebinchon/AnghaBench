
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {int dfa_memcfg0_base; int dfa_memcfg1_base; int mrs_dat_p0bunk0; int mrs_dat_p1bunk0; int mrs_dat_p0bunk1; int mrs_dat_p1bunk1; int p0_ena; int p1_ena; int bunkport; } ;
typedef TYPE_1__ rldram_csr_config_t ;
struct TYPE_6__ {char* addr_rld0_fb_str; char* addr_rld0_bb_str; char* addr_rld1_fb_str; char* addr_rld1_bb_str; int rld1_bunks; int rld0_bunks; int rld0_mbytes; int rld1_mbytes; int cpu_hz; int max_rld_clock_mhz; } ;
typedef TYPE_2__ llm_descriptor_t ;


 int MIN (int,int) ;
 int OCTEON_CN58XX ;
 scalar_t__ OCTEON_IS_MODEL (int ) ;
 int cvmx_dprintf (char*,...) ;
 int process_address_map_str (int,char*) ;
 int tskw_mod ;
 int tskw_ps ;

int rld_csr_config_generate(llm_descriptor_t *llm_desc_ptr, rldram_csr_config_t *cfg_ptr)
{
    char *addr_rld0_fb_str;
    char *addr_rld0_bb_str;
    char *addr_rld1_fb_str;
    char *addr_rld1_bb_str;
    int eclk_ps;
    int mtype = 0;
    int trcmin = 20;
    int trc_cyc;
    int trc_mod;
    int trl_cyc;
    int twl_cyc;
    int tmrsc_cyc = 6;
    int mclk_ps;
    int rldcfg = 99;
    int mrs_odt = 0;
    int mrs_impmatch = 0;
    int mrs_dllrst = 1;
    uint32_t mrs_dat;
    int mrs_dat_p0bunk0 = 0;
    int mrs_dat_p0bunk1 = 0;
    int mrs_dat_p1bunk0 = 0;
    int mrs_dat_p1bunk1 = 0;
    int p0_ena = 0;
    int p1_ena = 0;
    int memport = 0;
    int membunk;
    int bunkport = 0;
    int pbunk = 0;
    int tref_ms = 32;
    int trefi_ns;
    int rows = 8;
    int ref512int;
    int ref512mod;
    int tskw_cyc = 0;
    int fprch = 1;
    int bprch = 0;
    int dfa_memcfg0_base = 0;
    int dfa_memcfg1_base = 0;
    int tbl = 1;
    int rw_dly;
    int wr_dly;
    int r2r = 1;
    int sil_lat = 1;
    int clkdiv = 2;
    int clkdiv_enc = 0x0;

    if (!llm_desc_ptr)
        return -1;



    addr_rld0_fb_str = llm_desc_ptr->addr_rld0_fb_str;
    addr_rld0_bb_str = llm_desc_ptr->addr_rld0_bb_str;
    addr_rld1_fb_str = llm_desc_ptr->addr_rld1_fb_str;
    addr_rld1_bb_str = llm_desc_ptr->addr_rld1_bb_str;

    p0_ena = !!llm_desc_ptr->rld1_bunks;
    p1_ena = !!llm_desc_ptr->rld0_bunks;



    if (p0_ena && p1_ena)
    {
        memport = MIN(llm_desc_ptr->rld0_mbytes, llm_desc_ptr->rld1_mbytes);
        bunkport = MIN(llm_desc_ptr->rld0_bunks, llm_desc_ptr->rld1_bunks);
    }
    else if (p0_ena)
    {
        memport = llm_desc_ptr->rld1_mbytes;
        bunkport = llm_desc_ptr->rld1_bunks;
    }
    else if (p1_ena)
    {
        memport = llm_desc_ptr->rld0_mbytes;
        bunkport = llm_desc_ptr->rld0_bunks;
    }
    else
        return -1;

    uint32_t eclk_mhz = llm_desc_ptr->cpu_hz/1000000;




    if (eclk_mhz <= 367)
    {
        tskw_cyc = 0;
    }
    else
    {
        tskw_cyc = 1;
    }


    if (OCTEON_IS_MODEL(OCTEON_CN58XX))
    {
        uint32_t max_llm_clock_mhz = llm_desc_ptr->max_rld_clock_mhz;
        if (!max_llm_clock_mhz)
        {
            max_llm_clock_mhz = 400;
            cvmx_dprintf("Warning, using default max_rld_clock_mhz of: %lu MHz\n", (unsigned long)max_llm_clock_mhz);
        }


        clkdiv = eclk_mhz/max_llm_clock_mhz;
        if (clkdiv * max_llm_clock_mhz < eclk_mhz)
            clkdiv++;

        if (clkdiv > 4)
        {
            cvmx_dprintf("ERROR: CN58XX LLM clock divisor out of range\n");
            goto TERMINATE;
        }
        if (clkdiv < 2)
            clkdiv = 2;

        cvmx_dprintf("Using llm clock divisor: %d, llm clock is: %lu MHz\n", clkdiv, (unsigned long)eclk_mhz/clkdiv);






        if (clkdiv == 2)
            clkdiv_enc = 0;
        else
            clkdiv_enc = clkdiv - 1;


        if (clkdiv == 0x3)
            sil_lat = 2;


        if ((unsigned long)eclk_mhz/clkdiv >= 375)
            tskw_cyc += 1;
    }

    eclk_ps = (1000000+(eclk_mhz-1)) / eclk_mhz;




    if (mtype != 0)
    {
        goto TERMINATE;
    }




    mclk_ps = eclk_ps * clkdiv;
    trc_cyc = ((trcmin * 1000)/mclk_ps);
    trc_mod = ((trcmin * 1000) % mclk_ps);

    if (trc_mod != 0)
    {
        trc_cyc = trc_cyc + 1;
    }

    if (trc_cyc & 1)
    {
        trc_cyc = trc_cyc + 1;
    }

    if (trc_cyc < 4)
    {
        trc_cyc = 4;
    }
    else if (trc_cyc > 8)
    {
        goto TERMINATE;
    }



    trl_cyc = trc_cyc;
    twl_cyc = trl_cyc + 1;

    if (trc_cyc == 4)
    {
        rldcfg = 1;
    }
    else if (trc_cyc == 6)
    {
        rldcfg = 2;
    }
    else if (trc_cyc == 8)
    {
        rldcfg = 3;
    }
    else
    {
        goto TERMINATE;
    }

    mrs_dat = ( (mrs_odt << 9) | (mrs_impmatch << 8) | (mrs_dllrst << 7) | rldcfg );


    if (bunkport == 1)
    {
        goto CALC_PBUNK;
    }





    mrs_dat_p1bunk0 = process_address_map_str(mrs_dat, addr_rld0_fb_str);
    mrs_dat_p1bunk1 = process_address_map_str(mrs_dat, addr_rld0_bb_str);
    mrs_dat_p0bunk0 = process_address_map_str(mrs_dat, addr_rld1_fb_str);
    mrs_dat_p0bunk1 = process_address_map_str(mrs_dat, addr_rld1_bb_str);



    CALC_PBUNK:




    if (bunkport == 2)
    {
        membunk = (memport / 2);
    }
    else
    {
        membunk = memport;
    }
    if (membunk == 16)
    {
        pbunk = 0;
    }
    else if (membunk == 32)
    {
        pbunk = 1;
    }
    else if (membunk == 64)
    {
        pbunk = 2;
    }
    else if (membunk == 128)
    {
        pbunk = 3;
    }
    else if (membunk == 256)
    {
        pbunk = 4;
    }
    else if (membunk == 512)
    {
    }




    trefi_ns = (tref_ms * 1000 * 1000) / (rows * 1024);
    ref512int = ((trefi_ns * 1000) / (eclk_ps * 512));
    ref512mod = ((trefi_ns * 1000) % (eclk_ps * 512));
    if (tskw_cyc > 3)
    {
        goto TERMINATE;
    }

    tbl = 1;


    rw_dly = ((((trl_cyc + tbl) * 2 + tskw_cyc + bprch) + 1) / 2);
    if (rw_dly & 1)
    {
        rw_dly = rw_dly + 1;
    }
    rw_dly = rw_dly - twl_cyc +1 ;
    if (rw_dly < 0)
    {
        goto TERMINATE;
    }


    wr_dly = (((twl_cyc + tbl) * 2 - tskw_cyc + fprch) / 2);
    if (wr_dly & 1)
    {
        wr_dly = wr_dly + 1;
    }
    wr_dly = wr_dly - trl_cyc + 1;
    if (wr_dly < 0)
    {
        goto TERMINATE;
    }


    dfa_memcfg0_base = 0;
    dfa_memcfg0_base = ( p0_ena |
                         (p1_ena << 1) |
                         (mtype << 3) |
                         (sil_lat << 4) |
                         (rw_dly << 6) |
                         (wr_dly << 10) |
                         (fprch << 14) |
                         (bprch << 16) |
                         (0 << 18) |
                         (pbunk << 19) |
                         (r2r << 22) |
        (clkdiv_enc << 28 )
                       );


    dfa_memcfg1_base = 0;
    dfa_memcfg1_base = ( ref512int |
                         (tskw_cyc << 4) |
                         (trl_cyc << 8) |
                         (twl_cyc << 12) |
                         (trc_cyc << 16) |
                         (tmrsc_cyc << 20)
                       );




    cfg_ptr->dfa_memcfg0_base = dfa_memcfg0_base;
    cfg_ptr->dfa_memcfg1_base = dfa_memcfg1_base;
    cfg_ptr->mrs_dat_p0bunk0 = mrs_dat_p0bunk0;
    cfg_ptr->mrs_dat_p1bunk0 = mrs_dat_p1bunk0;
    cfg_ptr->mrs_dat_p0bunk1 = mrs_dat_p0bunk1;
    cfg_ptr->mrs_dat_p1bunk1 = mrs_dat_p1bunk1;
    cfg_ptr->p0_ena = p0_ena;
    cfg_ptr->p1_ena = p1_ena;
    cfg_ptr->bunkport = bunkport;


    return(0);
    TERMINATE:
    return(-1);

}
