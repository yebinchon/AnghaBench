
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct al_udma {int dummy; } ;


 int AL_UDMA_PRINT_REG (struct al_udma*,char*,char*,int ,int ,int ) ;
 int al_dbg (char*) ;
 int axi_data_fifo_status ;
 int check_en ;
 int err_log_mask ;
 int fifo_en ;
 int log_0 ;
 int log_1 ;
 int log_2 ;
 int log_3 ;
 int s2m ;
 int s_data_fifo_status ;
 int s_header_fifo_status ;
 int state ;
 int stream_cfg ;
 int unack_fifo_status ;

__attribute__((used)) static void al_udma_regs_s2m_general_print(struct al_udma *udma)
{
 al_dbg("S2M general regs:\n");
 AL_UDMA_PRINT_REG(udma, " ", "\n", s2m, s2m, state);
 AL_UDMA_PRINT_REG(udma, " ", "\n", s2m, s2m, err_log_mask);
 AL_UDMA_PRINT_REG(udma, " ", "\n", s2m, s2m, log_0);
 AL_UDMA_PRINT_REG(udma, " ", "\n", s2m, s2m, log_1);
 AL_UDMA_PRINT_REG(udma, " ", "\n", s2m, s2m, log_2);
 AL_UDMA_PRINT_REG(udma, " ", "\n", s2m, s2m, log_3);
 AL_UDMA_PRINT_REG(udma, " ", "\n", s2m, s2m, s_data_fifo_status);
 AL_UDMA_PRINT_REG(udma, " ", "\n", s2m, s2m, s_header_fifo_status);
 AL_UDMA_PRINT_REG(udma, " ", "\n", s2m, s2m, axi_data_fifo_status);
 AL_UDMA_PRINT_REG(udma, " ", "\n", s2m, s2m, unack_fifo_status);
 AL_UDMA_PRINT_REG(udma, " ", "\n", s2m, s2m, check_en);
 AL_UDMA_PRINT_REG(udma, " ", "\n", s2m, s2m, fifo_en);
 AL_UDMA_PRINT_REG(udma, " ", "\n", s2m, s2m, stream_cfg);
}
