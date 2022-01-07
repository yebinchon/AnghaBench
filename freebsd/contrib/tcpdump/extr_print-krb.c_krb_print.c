
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
struct krb {int pvno; } ;
struct TYPE_5__ {int const* ndo_snapend; } ;
typedef TYPE_1__ netdissect_options ;


 int ND_PRINT (TYPE_1__*) ;
 int krb4_print (TYPE_1__*,int const*) ;
 int tstr ;

void
krb_print(netdissect_options *ndo,
          const u_char *dat)
{
 register const struct krb *kp;

 kp = (const struct krb *)dat;

 if (dat >= ndo->ndo_snapend) {
  ND_PRINT((ndo, "%s", tstr));
  return;
 }

 switch (kp->pvno) {

 case 1:
 case 2:
 case 3:
  ND_PRINT((ndo, " v%d", kp->pvno));
  break;

 case 4:
  ND_PRINT((ndo, " v%d", kp->pvno));
  krb4_print(ndo, (const u_char *)kp);
  break;

 case 106:
 case 107:
  ND_PRINT((ndo, " v5"));

  break;
 }
 return;
}
