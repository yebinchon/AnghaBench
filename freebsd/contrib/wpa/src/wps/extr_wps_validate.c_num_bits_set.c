
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;



__attribute__((used)) static int num_bits_set(u16 val)
{
 int c;
 for (c = 0; val; c++)
  val &= val - 1;
 return c;
}
