
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
struct pptp_msg_stopccrq {int reason; int reserved1; int reserved2; } ;
struct TYPE_4__ {scalar_t__ ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;


 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK (int) ;
 int tstr ;

__attribute__((used)) static void
pptp_stopccrq_print(netdissect_options *ndo,
                    const u_char *dat)
{
 const struct pptp_msg_stopccrq *ptr = (const struct pptp_msg_stopccrq *)dat;

 ND_TCHECK(ptr->reason);
 ND_PRINT((ndo, " REASON(%u", ptr->reason));
 if (ndo->ndo_vflag) {
  switch (ptr->reason) {
  case 1:
   ND_PRINT((ndo, ":None"));
   break;
  case 2:
   ND_PRINT((ndo, ":Stop-Protocol"));
   break;
  case 3:
   ND_PRINT((ndo, ":Stop-Local-Shutdown"));
   break;
  default:
   ND_PRINT((ndo, ":?"));
   break;
  }
 }
 ND_PRINT((ndo, ")"));
 ND_TCHECK(ptr->reserved1);
 ND_TCHECK(ptr->reserved2);

 return;

trunc:
 ND_PRINT((ndo, "%s", tstr));
}
