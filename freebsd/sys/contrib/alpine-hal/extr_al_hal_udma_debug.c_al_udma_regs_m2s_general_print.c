
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct al_udma {int dummy; } ;


 int AL_UDMA_PRINT_REG (struct al_udma*,char*,char*,int ,int ,int ) ;
 int AL_UDMA_PRINT_REG_FIELD (struct al_udma*,char*,char*,char*,int ,int ,int ,int ,int ) ;
 int UDMA_M2S_STATE_COMP_CTRL ;
 int UDMA_M2S_STATE_DATA_RD_CTRL ;
 int UDMA_M2S_STATE_DESC_PREF ;
 int UDMA_M2S_STATE_STREAM_IF ;
 int al_dbg (char*) ;
 int cfg_len ;
 int check_en ;
 int comp_ctrl ;
 int data_fifo_status ;
 int desc_pref ;
 int err_log_mask ;
 int fifo_en ;
 int header_fifo_status ;
 int log_0 ;
 int log_1 ;
 int log_2 ;
 int log_3 ;
 int m2s ;
 int rd_ctrl ;
 int state ;
 int stream_cfg ;
 int stream_if ;
 int unack_fifo_status ;

__attribute__((used)) static void al_udma_regs_m2s_general_print(struct al_udma *udma)
{
 al_dbg("M2S general regs:\n");

 AL_UDMA_PRINT_REG(udma, " ", "\n", m2s, m2s, state);
 AL_UDMA_PRINT_REG_FIELD(udma, "  ", "\n", "%d", m2s, m2s, state,
   comp_ctrl,
   UDMA_M2S_STATE_COMP_CTRL);
 AL_UDMA_PRINT_REG_FIELD(udma, "  ", "\n", "%d", m2s, m2s, state,
   stream_if,
   UDMA_M2S_STATE_STREAM_IF);
 AL_UDMA_PRINT_REG_FIELD(udma, "  ", "\n", "%d", m2s, m2s, state,
   rd_ctrl,
   UDMA_M2S_STATE_DATA_RD_CTRL);
 AL_UDMA_PRINT_REG_FIELD(udma, "  ", "\n", "%d", m2s, m2s, state,
   desc_pref,
   UDMA_M2S_STATE_DESC_PREF);

 AL_UDMA_PRINT_REG(udma, " ", "\n", m2s, m2s, err_log_mask);
 AL_UDMA_PRINT_REG(udma, " ", "\n", m2s, m2s, log_0);
 AL_UDMA_PRINT_REG(udma, " ", "\n", m2s, m2s, log_1);
 AL_UDMA_PRINT_REG(udma, " ", "\n", m2s, m2s, log_2);
 AL_UDMA_PRINT_REG(udma, " ", "\n", m2s, m2s, log_3);
 AL_UDMA_PRINT_REG(udma, " ", "\n", m2s, m2s, data_fifo_status);
 AL_UDMA_PRINT_REG(udma, " ", "\n", m2s, m2s, header_fifo_status);
 AL_UDMA_PRINT_REG(udma, " ", "\n", m2s, m2s, unack_fifo_status);
 AL_UDMA_PRINT_REG(udma, " ", "\n", m2s, m2s, check_en);
 AL_UDMA_PRINT_REG(udma, " ", "\n", m2s, m2s, fifo_en);
 AL_UDMA_PRINT_REG(udma, " ", "\n", m2s, m2s, cfg_len);
 AL_UDMA_PRINT_REG(udma, " ", "\n", m2s, m2s, stream_cfg);
}
