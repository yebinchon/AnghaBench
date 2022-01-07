
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ fr_byt; } ;
union cvmx_ndf_misc {TYPE_1__ s; int u64; } ;


 int CVMX_NAND_LOG_CALLED () ;
 int CVMX_NAND_RETURN (int) ;
 int CVMX_NDF_MISC ;
 int cvmx_read_csr (int ) ;

__attribute__((used)) static inline int __cvmx_nand_get_free_cmd_bytes(void)
{
    union cvmx_ndf_misc ndf_misc;
    CVMX_NAND_LOG_CALLED();
    ndf_misc.u64 = cvmx_read_csr(CVMX_NDF_MISC);
    CVMX_NAND_RETURN((int)ndf_misc.s.fr_byt);
}
