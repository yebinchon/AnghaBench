
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int OCTEON_CN68XX ;
 int OCTEON_IS_MODEL (int ) ;

__attribute__((used)) static int __mdiobus_addr_to_unit(uint32_t addr)
{
    int unit = (addr >> 7) & 3;
    if (!OCTEON_IS_MODEL(OCTEON_CN68XX))
        unit >>= 1;
    return unit;
}
