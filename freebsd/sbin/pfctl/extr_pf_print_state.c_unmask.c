
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct pf_addr {int* addr32; } ;
typedef int sa_family_t ;


 int ntohl (int) ;

int
unmask(struct pf_addr *m, sa_family_t af)
{
 int i = 31, j = 0, b = 0;
 u_int32_t tmp;

 while (j < 4 && m->addr32[j] == 0xffffffff) {
  b += 32;
  j++;
 }
 if (j < 4) {
  tmp = ntohl(m->addr32[j]);
  for (i = 31; tmp & (1 << i); --i)
   b++;
 }
 return (b);
}
