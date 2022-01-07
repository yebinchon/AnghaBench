
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int cvmx_wqe_t ;
struct TYPE_3__ {int tt; } ;
struct TYPE_4__ {TYPE_1__ s; int u64; } ;
typedef TYPE_2__ cvmx_pip_bsel_tbl_entx_t ;


 int CVMX_PIP_BSEL_TBL_ENTX (int) ;
 int OCTEON_FEATURE_BIT_EXTRACTOR ;
 int cvmx_pip_get_bsel_table_index (int *) ;
 int cvmx_read_csr (int ) ;
 int octeon_has_feature (int ) ;

__attribute__((used)) static inline int cvmx_pip_get_bsel_tt(cvmx_wqe_t *work)
{
    int index = cvmx_pip_get_bsel_table_index(work);
    cvmx_pip_bsel_tbl_entx_t bsel_tbl;


    if (!octeon_has_feature(OCTEON_FEATURE_BIT_EXTRACTOR))
        return -1;

    bsel_tbl.u64 = cvmx_read_csr(CVMX_PIP_BSEL_TBL_ENTX(index));

    return bsel_tbl.s.tt;
}
