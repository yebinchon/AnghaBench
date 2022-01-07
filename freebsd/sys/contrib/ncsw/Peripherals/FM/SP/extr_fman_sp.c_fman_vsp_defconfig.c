
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fm_storage_profile_params {int no_scather_gather; int dma_write_optimize; int scatter_gather_cache_attr; int header_cache_attr; int int_context_cache_attr; int dma_swap_data; } ;


 int DEFAULT_FMAN_SP_DMA_HEADER_CACHE_ATTR ;
 int DEFAULT_FMAN_SP_DMA_INT_CONTEXT_CACHE_ATTR ;
 int DEFAULT_FMAN_SP_DMA_SCATTER_GATHER_CACHE_ATTR ;
 int DEFAULT_FMAN_SP_DMA_SWAP_DATA ;
 int DEFAULT_FMAN_SP_DMA_WRITE_OPTIMIZE ;
 int DEFAULT_FMAN_SP_NO_SCATTER_GATHER ;

void fman_vsp_defconfig(struct fm_storage_profile_params *cfg)
{
    cfg->dma_swap_data =
            DEFAULT_FMAN_SP_DMA_SWAP_DATA;
    cfg->int_context_cache_attr =
            DEFAULT_FMAN_SP_DMA_INT_CONTEXT_CACHE_ATTR;
    cfg->header_cache_attr =
            DEFAULT_FMAN_SP_DMA_HEADER_CACHE_ATTR;
    cfg->scatter_gather_cache_attr =
            DEFAULT_FMAN_SP_DMA_SCATTER_GATHER_CACHE_ATTR;
    cfg->dma_write_optimize =
            DEFAULT_FMAN_SP_DMA_WRITE_OPTIMIZE;
    cfg->no_scather_gather =
            DEFAULT_FMAN_SP_NO_SCATTER_GATHER;
}
