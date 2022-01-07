
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __cvmx_nand_get_column_bits (int) ;
 int __cvmx_nand_get_row_bits (int) ;

__attribute__((used)) static inline int __cvmx_nand_get_address_cycles(int chip)
{
    int address_bits = ((__cvmx_nand_get_column_bits(chip) + 7) >> 3) << 3;
    address_bits += ((__cvmx_nand_get_row_bits(chip) + 7) >> 3) << 3;
    return (address_bits + 7) >> 3;
}
