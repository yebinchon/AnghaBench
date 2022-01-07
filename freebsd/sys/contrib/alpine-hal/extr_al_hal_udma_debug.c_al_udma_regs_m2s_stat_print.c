
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct al_udma {int dummy; } ;


 int AL_UDMA_PRINT_REG (struct al_udma*,char*,char*,int ,int ,int ) ;
 int ack_pkts ;
 int al_dbg (char*) ;
 int cfg_st ;
 int comp_desc ;
 int comp_pkt ;
 int m2s ;
 int m2s_stat ;
 int prefed_desc ;
 int tx_bytes_high ;
 int tx_bytes_low ;
 int tx_pkt ;

__attribute__((used)) static void al_udma_regs_m2s_stat_print(struct al_udma *udma)
{
 al_dbg("M2S statistics regs:\n");
 AL_UDMA_PRINT_REG(udma, " ", "\n", m2s, m2s_stat, cfg_st);
 AL_UDMA_PRINT_REG(udma, " ", "\n", m2s, m2s_stat, tx_pkt);
 AL_UDMA_PRINT_REG(udma, " ", "\n", m2s, m2s_stat, tx_bytes_low);
 AL_UDMA_PRINT_REG(udma, " ", "\n", m2s, m2s_stat, tx_bytes_high);
 AL_UDMA_PRINT_REG(udma, " ", "\n", m2s, m2s_stat, prefed_desc);
 AL_UDMA_PRINT_REG(udma, " ", "\n", m2s, m2s_stat, comp_pkt);
 AL_UDMA_PRINT_REG(udma, " ", "\n", m2s, m2s_stat, comp_desc);
 AL_UDMA_PRINT_REG(udma, " ", "\n", m2s, m2s_stat, ack_pkts);
}
