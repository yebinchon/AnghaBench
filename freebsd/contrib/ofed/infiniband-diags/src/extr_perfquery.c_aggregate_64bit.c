
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;



__attribute__((used)) static void aggregate_64bit(uint64_t * dest, uint64_t val)
{
 if (((*dest) + val) < (*dest))
  (*dest) = 0xffffffffffffffffULL;
 else
  (*dest) = (*dest) + val;
}
