
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
ilog2(int n)
{
 int v;

 for (v = 0; v < 32; v++)
  if (n == (1 << v))
   return v;
 return -1;
}
