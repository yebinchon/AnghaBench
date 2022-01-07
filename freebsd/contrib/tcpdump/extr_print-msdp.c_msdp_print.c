
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u_int ;
typedef int u_char ;
struct TYPE_6__ {int ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;


 unsigned int EXTRACT_16BITS (int const*) ;
 unsigned int MSDP_TYPE_MAX ;
 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK (int const) ;
 int ND_TCHECK2 (int const,int) ;
 int ip_print (TYPE_1__*,int const*,int ) ;
 int ipaddr_string (TYPE_1__*,int const*) ;

void
msdp_print(netdissect_options *ndo, const u_char *sp, u_int length)
{
 unsigned int type, len;

 ND_TCHECK2(*sp, 3);

 type = *sp;
 len = EXTRACT_16BITS(sp + 1);
 if (len > 1500 || len < 3 || type == 0 || type > MSDP_TYPE_MAX)
  goto trunc;
 ND_PRINT((ndo, " msdp:"));
 while (length > 0) {
  ND_TCHECK2(*sp, 3);
  type = *sp;
  len = EXTRACT_16BITS(sp + 1);
  if (len > 1400 || ndo->ndo_vflag)
   ND_PRINT((ndo, " [len %u]", len));
  if (len < 3)
   goto trunc;
  sp += 3;
  length -= 3;
  switch (type) {
  case 1:
  case 3:
   if (type == 1)
    ND_PRINT((ndo, " SA"));
   else
    ND_PRINT((ndo, " SA-Response"));
   ND_TCHECK(*sp);
   ND_PRINT((ndo, " %u entries", *sp));
   if ((u_int)((*sp * 12) + 8) < len) {
    ND_PRINT((ndo, " [w/data]"));
    if (ndo->ndo_vflag > 1) {
     ND_PRINT((ndo, " "));
     ip_print(ndo, sp + *sp * 12 + 8 - 3,
              len - (*sp * 12 + 8));
    }
   }
   break;
  case 2:
   ND_PRINT((ndo, " SA-Request"));
   ND_TCHECK2(*sp, 5);
   ND_PRINT((ndo, " for %s", ipaddr_string(ndo, sp + 1)));
   break;
  case 4:
   ND_PRINT((ndo, " Keepalive"));
   if (len != 3)
    ND_PRINT((ndo, "[len=%d] ", len));
   break;
  case 5:
   ND_PRINT((ndo, " Notification"));
   break;
  default:
   ND_PRINT((ndo, " [type=%d len=%d]", type, len));
   break;
  }
  sp += (len - 3);
  length -= (len - 3);
 }
 return;
trunc:
 ND_PRINT((ndo, " [|msdp]"));
}
