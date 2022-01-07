
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct al_udma {int dummy; } ;


 int AL_UDMA_PRINT_REG (struct al_udma*,char*,char*,int ,int ,int ) ;
 int ack_pkts ;
 int al_dbg (char*) ;
 int comp_desc ;
 int comp_pkt ;
 int drop_pkt ;
 int prefed_desc ;
 int rx_bytes_high ;
 int rx_bytes_low ;
 int s2m ;
 int s2m_stat ;

__attribute__((used)) static void al_udma_regs_s2m_stat_print(struct al_udma *udma)
{
 al_dbg("S2M statistics regs:\n");
 AL_UDMA_PRINT_REG(udma, " ", "\n", s2m, s2m_stat, drop_pkt);
 AL_UDMA_PRINT_REG(udma, " ", "\n", s2m, s2m_stat, rx_bytes_low);
 AL_UDMA_PRINT_REG(udma, " ", "\n", s2m, s2m_stat, rx_bytes_high);
 AL_UDMA_PRINT_REG(udma, " ", "\n", s2m, s2m_stat, prefed_desc);
 AL_UDMA_PRINT_REG(udma, " ", "\n", s2m, s2m_stat, comp_pkt);
 AL_UDMA_PRINT_REG(udma, " ", "\n", s2m, s2m_stat, comp_desc);
 AL_UDMA_PRINT_REG(udma, " ", "\n", s2m, s2m_stat, ack_pkts);
}
