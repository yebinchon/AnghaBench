
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct uni_subaddr {int type; int len; int addr; } ;
struct uni_msg {int b_rptr; } ;




 int memcpy (int ,int ,int) ;

__attribute__((used)) static int
decode_subaddr(struct uni_subaddr *addr, u_int ielen, struct uni_msg *msg,
    u_int type)
{
 switch(addr->type = (type >> 4) & 0x7) {

   case 128:
  if(ielen == 0 || ielen > 20)
   return -1;
  break;

   case 129:
  if(ielen != 20)
   return -1;
  break;

   default:
  return -1;
 }
 if(!(type & 0x80))
  return -1;
 if((type & 0x7) != 0)
  return -1;

 addr->len = ielen;
 (void)memcpy(addr->addr, msg->b_rptr, ielen);
 msg->b_rptr += ielen;

 return 0;
}
