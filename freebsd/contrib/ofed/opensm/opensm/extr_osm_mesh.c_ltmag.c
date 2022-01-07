
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int ltmag(int a, int b)
{
 int a1 = (a >= 0)? a : -a;
 int b1 = (b >= 0)? b : -b;

 return (a1 < b1) || (a1 == b1 && a > b);
}
