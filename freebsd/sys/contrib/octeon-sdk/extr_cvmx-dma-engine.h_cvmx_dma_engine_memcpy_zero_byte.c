
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ dici_mode; } ;
struct TYPE_8__ {TYPE_1__ s; int u64; } ;
typedef TYPE_3__ cvmx_dpi_dma_control_t ;
struct TYPE_7__ {int addr; scalar_t__ wqp; int type; } ;
struct TYPE_9__ {TYPE_2__ s; scalar_t__ u64; } ;
typedef TYPE_4__ cvmx_dma_engine_header_t ;


 int CVMX_DMA_ENGINE_TRANSFER_INTERNAL ;
 int CVMX_DPI_DMA_CONTROL ;
 int OCTEON_FEATURE_DICI_MODE ;
 int cvmx_dma_engine_transfer (int,TYPE_4__,int ,int ,int) ;
 int cvmx_ptr_to_phys (void*) ;
 int cvmx_read_csr (int ) ;
 scalar_t__ octeon_has_feature (int ) ;

__attribute__((used)) static inline int cvmx_dma_engine_memcpy_zero_byte(int engine, void *dest, void *source, int length, int core)
{
    cvmx_dma_engine_header_t header;
    header.u64 = 0;
    header.s.type = CVMX_DMA_ENGINE_TRANSFER_INTERNAL;


    if (octeon_has_feature(OCTEON_FEATURE_DICI_MODE))
    {
        cvmx_dpi_dma_control_t dma_control;
        dma_control.u64 = cvmx_read_csr(CVMX_DPI_DMA_CONTROL);
        if (dma_control.s.dici_mode)
        {
           header.s.wqp = 0;
           header.s.addr = core + 1;
        }
    }
    return cvmx_dma_engine_transfer(engine, header, cvmx_ptr_to_phys(source),
                                    cvmx_ptr_to_phys(dest), length);
}
