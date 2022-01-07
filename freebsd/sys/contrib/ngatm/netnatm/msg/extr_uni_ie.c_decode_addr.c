
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct uni_msg {int b_rptr; } ;
struct uni_addr {int plan; int type; int len; int * addr; } ;




 int memcpy (int *,int ,int) ;

__attribute__((used)) static int
decode_addr(struct uni_addr *addr, u_int ielen, struct uni_msg *msg, u_int plan)
{
 addr->plan = plan & 0xf;
 addr->type = (plan >> 4) & 0x7;

 switch(addr->plan) {

   case 128:
  if(ielen > 15 || ielen == 0)
   return -1;
  addr->addr[ielen] = 0;
  break;

   case 129:
  if(ielen != 20)
   return -1;
  break;

   default:
  return -1;
 }
 (void)memcpy(addr->addr, msg->b_rptr, ielen);
 addr->len = ielen;
 msg->b_rptr += ielen;

 return 0;
}
