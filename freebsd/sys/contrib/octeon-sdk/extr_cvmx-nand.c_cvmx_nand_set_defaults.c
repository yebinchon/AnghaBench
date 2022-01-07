
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int cvmx_nand_status_t ;
struct TYPE_2__ {int page_size; int oob_size; int pages_per_block; int blocks; int onfi_timing; } ;


 int CVMX_NAND_INVALID_PARAM ;
 int CVMX_NAND_RETURN (int ) ;
 int CVMX_NAND_SUCCESS ;
 TYPE_1__ cvmx_nand_default ;

cvmx_nand_status_t cvmx_nand_set_defaults(int page_size, int oob_size, int pages_per_block, int blocks, int onfi_timing_mode)
{
    if (!page_size || !oob_size || !pages_per_block || !blocks || onfi_timing_mode > 5)
        CVMX_NAND_RETURN(CVMX_NAND_INVALID_PARAM);

    cvmx_nand_default.page_size = page_size;
    cvmx_nand_default.oob_size = oob_size;
    cvmx_nand_default.pages_per_block = pages_per_block;
    cvmx_nand_default.blocks = blocks;
    cvmx_nand_default.onfi_timing = onfi_timing_mode;

    CVMX_NAND_RETURN(CVMX_NAND_SUCCESS);
}
