
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_ofwh_t ;
typedef int ofwh_t ;
typedef int ofwcell_t ;


 scalar_t__ ofw (int*) ;
 int printf (char*,int,void*,size_t) ;
 scalar_t__ stub1 (int*) ;

__attribute__((used)) static int
ofw_getprop(ofwh_t ofwh, const char *name, void *buf, size_t len)
{
 ofwcell_t args[] = {
  (ofwcell_t)"getprop",
  4,
  1,
  (u_ofwh_t)ofwh,
  (ofwcell_t)name,
  (ofwcell_t)buf,
  len,
 0
 };

 if ((*ofw)(args)) {
  printf("ofw_getprop: ofwh=0x%x buf=%p len=%u\n",
   ofwh, buf, len);
  return (1);
 }
 return (0);
}
