
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct udma_gen_axi {int endian_cfg; int cfg_2; int cfg_1; } ;
struct al_udma_axi_conf {scalar_t__ swap_8_bytes; scalar_t__ swap_s2m_data; scalar_t__ swap_s2m_desc; scalar_t__ swap_m2s_data; scalar_t__ swap_m2s_desc; int arb_promotion; int axi_timeout; } ;


 scalar_t__ AL_TRUE ;
 int UDMA_GEN_AXI_CFG_2_ARB_PROMOTION_MASK ;
 int UDMA_GEN_AXI_ENDIAN_CFG_SWAP_64B_EN ;
 int UDMA_GEN_AXI_ENDIAN_CFG_SWAP_M2S_DATA ;
 int UDMA_GEN_AXI_ENDIAN_CFG_SWAP_M2S_DESC ;
 int UDMA_GEN_AXI_ENDIAN_CFG_SWAP_S2M_DATA ;
 int UDMA_GEN_AXI_ENDIAN_CFG_SWAP_S2M_DESC ;
 int al_reg_read32 (int *) ;
 int al_reg_write32 (int *,int ) ;

int al_udma_axi_set(struct udma_gen_axi *axi_regs,
     struct al_udma_axi_conf *axi)
{
        uint32_t reg;

        al_reg_write32(&axi_regs->cfg_1, axi->axi_timeout);

        reg = al_reg_read32(&axi_regs->cfg_2);
        reg &= ~UDMA_GEN_AXI_CFG_2_ARB_PROMOTION_MASK;
        reg |= axi->arb_promotion;
        al_reg_write32(&axi_regs->cfg_2, reg);

        reg = al_reg_read32(&axi_regs->endian_cfg);
        if (axi->swap_8_bytes == AL_TRUE)
                reg |= UDMA_GEN_AXI_ENDIAN_CFG_SWAP_64B_EN;
        else
                reg &= ~UDMA_GEN_AXI_ENDIAN_CFG_SWAP_64B_EN;

        if (axi->swap_s2m_data == AL_TRUE)
                reg |= UDMA_GEN_AXI_ENDIAN_CFG_SWAP_S2M_DATA;
        else
                reg &= ~UDMA_GEN_AXI_ENDIAN_CFG_SWAP_S2M_DATA;

        if (axi->swap_s2m_desc == AL_TRUE)
                reg |= UDMA_GEN_AXI_ENDIAN_CFG_SWAP_S2M_DESC;
        else
                reg &= ~UDMA_GEN_AXI_ENDIAN_CFG_SWAP_S2M_DESC;

        if (axi->swap_m2s_data == AL_TRUE)
                reg |= UDMA_GEN_AXI_ENDIAN_CFG_SWAP_M2S_DATA;
        else
                reg &= ~UDMA_GEN_AXI_ENDIAN_CFG_SWAP_M2S_DATA;

        if (axi->swap_m2s_desc == AL_TRUE)
                reg |= UDMA_GEN_AXI_ENDIAN_CFG_SWAP_M2S_DESC;
        else
                reg &= ~UDMA_GEN_AXI_ENDIAN_CFG_SWAP_M2S_DESC;

        al_reg_write32(&axi_regs->endian_cfg, reg);
        return 0;
}
