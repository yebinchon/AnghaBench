
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CVMX_ERROR_GROUP_PCI ;
 int OCTEON_FEATURE_NPEI ;
 int __cvmx_pcie_rc_initialize_gen1 (int) ;
 int __cvmx_pcie_rc_initialize_gen2 (int) ;
 int cvmx_error_enable_group (int ,int) ;
 scalar_t__ octeon_has_feature (int ) ;

int cvmx_pcie_rc_initialize(int pcie_port)
{
    int result;
    if (octeon_has_feature(OCTEON_FEATURE_NPEI))
        result = __cvmx_pcie_rc_initialize_gen1(pcie_port);
    else
        result = __cvmx_pcie_rc_initialize_gen2(pcie_port);

    if (result == 0)
        cvmx_error_enable_group(CVMX_ERROR_GROUP_PCI, pcie_port);

    return result;
}
