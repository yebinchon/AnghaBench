
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int ofwcell_t ;


 scalar_t__ ofw (int*) ;
 int printf (char*,void*,size_t) ;
 scalar_t__ stub1 (int*) ;

__attribute__((used)) static int
ofw_claim(void *virt, size_t len, u_int align)
{
 ofwcell_t args[] = {
  (ofwcell_t)"claim",
  3,
  1,
  (ofwcell_t)virt,
  len,
  align,
  0,
  0
 };

 if ((*ofw)(args)) {
  printf("ofw_claim: virt=%p len=%u\n", virt, len);
  return (1);
 }

 return (0);
}
