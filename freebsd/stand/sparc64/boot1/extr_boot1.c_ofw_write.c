
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_ofwh_t ;
typedef int ofwh_t ;
typedef int ofwcell_t ;


 scalar_t__ ofw (int*) ;
 int printf (char*,int,void const*,size_t) ;
 scalar_t__ stub1 (int*) ;

__attribute__((used)) static int
ofw_write(ofwh_t devh, const void *buf, size_t len)
{
 ofwcell_t args[] = {
  (ofwcell_t)"write",
  3,
  1,
  (u_ofwh_t)devh,
  (ofwcell_t)buf,
  len,
  0
 };

 if ((*ofw)(args)) {
  printf("ofw_write: devh=0x%x buf=%p len=%u\n", devh, buf, len);
  return (1);
 }
 return (0);
}
