
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int rs_scale_to_value(int value, int bits)
{
 return value <= (1 << (bits - 1)) ?
        value : (value & ~(1 << (bits - 1))) << bits;
}
