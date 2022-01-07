
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ u_int ;
typedef int u_char ;
struct TYPE_9__ {scalar_t__ ndo_eflag; } ;
typedef TYPE_1__ netdissect_options ;




 int ATM_OAM_HEC ;
 int ND_PRINT (TYPE_1__*) ;






 int atm_llc_print (TYPE_1__*,int const*,scalar_t__,scalar_t__) ;
 int lane_print (TYPE_1__*,int const*,scalar_t__,scalar_t__) ;
 int oam_print (TYPE_1__*,int const*,scalar_t__,int ) ;
 int sig_print (TYPE_1__*,int const*) ;
 int snmp_print (TYPE_1__*,int const*,scalar_t__) ;

void
atm_print(netdissect_options *ndo,
          u_int vpi, u_int vci, u_int traftype, const u_char *p, u_int length,
          u_int caplen)
{
 if (ndo->ndo_eflag)
  ND_PRINT((ndo, "VPI:%u VCI:%u ", vpi, vci));

 if (vpi == 0) {
  switch (vci) {

  case 128:
   sig_print(ndo, p);
   return;

  case 133:
   ND_PRINT((ndo, "broadcast sig: "));
   return;

  case 129:
  case 130:
   oam_print(ndo, p, length, ATM_OAM_HEC);
   return;

  case 131:
   ND_PRINT((ndo, "meta: "));
   return;

  case 132:
   ND_PRINT((ndo, "ilmi: "));
   snmp_print(ndo, p, length);
   return;
  }
 }

 switch (traftype) {

 case 134:
 default:



  atm_llc_print(ndo, p, length, caplen);
  break;

 case 135:
  lane_print(ndo, p, length, caplen);
  break;
 }
}
