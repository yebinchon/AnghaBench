
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static
unsigned set_fp_bit(bool present, int i, int j, int k)
{
 return (unsigned)(!present) << (i + 2 * j + 4 * k);
}
