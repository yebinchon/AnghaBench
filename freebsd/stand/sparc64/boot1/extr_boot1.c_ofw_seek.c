
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u_ofwh_t ;
typedef int ofwh_t ;
typedef int ofwcell_t ;


 scalar_t__ ofw (int*) ;
 int printf (char*,int,int) ;
 scalar_t__ stub1 (int*) ;

__attribute__((used)) static int
ofw_seek(ofwh_t devh, uint64_t off)
{
 ofwcell_t args[] = {
  (ofwcell_t)"seek",
  3,
  1,
  (u_ofwh_t)devh,
  off >> 32,
  off,
  0
 };

 if ((*ofw)(args)) {
  printf("ofw_seek: devh=0x%x off=0x%lx\n", devh, off);
  return (1);
 }
 return (0);
}
