
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int in_addr_t ;



__attribute__((used)) static in_addr_t
countmask(unsigned m)
{
 in_addr_t mask;

 if (m == 0) {
  mask = 0x0;
 } else {
  mask = 1 << (32 - m);
  mask--;
  mask = ~mask;
 }
 return (mask);
}
