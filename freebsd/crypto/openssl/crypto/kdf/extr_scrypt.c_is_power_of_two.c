
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;



__attribute__((used)) static int is_power_of_two(uint64_t value)
{
    return (value != 0) && ((value & (value - 1)) == 0);
}
