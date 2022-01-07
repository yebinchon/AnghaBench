
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct uni_addr {int plan; int len; int* addr; int type; } ;




 int UNI_ADDR_INTERNATIONAL ;
 int UNI_ADDR_UNKNOWN ;

__attribute__((used)) static int
check_addr(struct uni_addr *addr)
{
 u_int i;

 switch(addr->plan) {
   default:
  return -1;

   case 128:
  if(addr->type != UNI_ADDR_INTERNATIONAL)
   return -1;
  if(addr->len > 15 || addr->len == 0)
   return -1;
  for(i = 0; i < addr->len; i++)
   if(addr->addr[i] == 0 || (addr->addr[i] & 0x80))
    return -1;
  break;

   case 129:
  if(addr->type != UNI_ADDR_UNKNOWN)
   return -1;
  if(addr->len != 20)
   return -1;
  break;
 }

 return 0;
}
