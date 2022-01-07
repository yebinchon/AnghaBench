
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int en; int rw; int size; scalar_t__ adr; scalar_t__ clr; } ;
union cvmx_mio_ndf_dma_cfg {scalar_t__ u64; TYPE_1__ s; } ;
typedef scalar_t__ uint64_t ;
typedef int ULL ;


 int CVMX_MIO_NDF_DMA_CFG ;
 int CVMX_NAND_LOG_CALLED () ;
 int CVMX_NAND_LOG_PARAM (char*,int) ;
 int CVMX_NAND_RETURN_NOTHING () ;
 int CVMX_SYNCWS ;
 int cvmx_write_csr (int ,scalar_t__) ;

__attribute__((used)) static inline void __cvmx_nand_setup_dma(int chip, int is_write, uint64_t buffer_address, int buffer_length)
{
    union cvmx_mio_ndf_dma_cfg ndf_dma_cfg;
    CVMX_NAND_LOG_CALLED();
    CVMX_NAND_LOG_PARAM("%d", chip);
    CVMX_NAND_LOG_PARAM("%d", is_write);
    CVMX_NAND_LOG_PARAM("0x%llx", (ULL)buffer_address);
    CVMX_NAND_LOG_PARAM("%d", buffer_length);
    ndf_dma_cfg.u64 = 0;
    ndf_dma_cfg.s.en = 1;
    ndf_dma_cfg.s.rw = is_write;
    ndf_dma_cfg.s.clr = 0;
    ndf_dma_cfg.s.size = ((buffer_length + 7) >> 3) - 1;
    ndf_dma_cfg.s.adr = buffer_address;
    CVMX_SYNCWS;
    cvmx_write_csr(CVMX_MIO_NDF_DMA_CFG, ndf_dma_cfg.u64);
    CVMX_NAND_RETURN_NOTHING();
}
