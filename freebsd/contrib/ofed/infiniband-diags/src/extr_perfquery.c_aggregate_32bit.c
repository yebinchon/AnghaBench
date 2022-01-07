
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;



__attribute__((used)) static void aggregate_32bit(uint32_t * dest, uint32_t val)
{
 if (((*dest) + val) < (*dest))
  (*dest) = 0xffffffff;
 else
  (*dest) = (*dest) + val;
}
