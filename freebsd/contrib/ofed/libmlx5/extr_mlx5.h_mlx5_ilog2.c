
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int mlx5_ilog2(int n)
{
 int t;

 if (n <= 0)
  return -1;

 t = 0;
 while ((1 << t) < n)
  ++t;

 return t;
}
