
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reg {int sz64; int sz32; } ;



__attribute__((used)) static int
regsize (const struct reg *reg, int wordsize)
{
  return wordsize == 8 ? reg->sz64 : reg->sz32;
}
