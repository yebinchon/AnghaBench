
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_3__ {int io; int did; int subdid; scalar_t__ upper; } ;
struct TYPE_4__ {scalar_t__ u64; TYPE_1__ mem; } ;
typedef TYPE_2__ cvmx_pcie_address_t ;



uint64_t cvmx_pcie_get_mem_base_address(int pcie_port)
{
    cvmx_pcie_address_t pcie_addr;
    pcie_addr.u64 = 0;
    pcie_addr.mem.upper = 0;
    pcie_addr.mem.io = 1;
    pcie_addr.mem.did = 3;
    pcie_addr.mem.subdid = 3 + pcie_port;
    return pcie_addr.u64;
}
