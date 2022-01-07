
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uni_subaddr {int type; int len; } ;





__attribute__((used)) static int
check_subaddr(struct uni_subaddr *addr)
{
 switch(addr->type) {
   default:
  return -1;

   case 128:
  if(addr->len != 20)
   return -1;
  break;

   case 129:
  if(addr->len > 20)
   return -1;
  break;
 }
 return 0;
}
