
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
struct pim {int pim_typever; int pim_rsv; } ;
struct TYPE_5__ {int ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;


 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK (int ) ;
 int PIM_TYPE (int ) ;
 int PIM_VER (int ) ;
 int pimv2_print (TYPE_1__*,int const*,int ,int const*) ;
 int pimv2_type_values ;
 int tok2str (int ,char*,int ) ;

void
pim_print(netdissect_options *ndo,
          register const u_char *bp, register u_int len, const u_char *bp2)
{
 register const struct pim *pim = (const struct pim *)bp;





 ND_TCHECK(pim->pim_typever);
 switch (PIM_VER(pim->pim_typever)) {
 case 2:
  if (!ndo->ndo_vflag) {
   ND_PRINT((ndo, "PIMv%u, %s, length %u",
             PIM_VER(pim->pim_typever),
             tok2str(pimv2_type_values,"Unknown Type",PIM_TYPE(pim->pim_typever)),
             len));
   return;
  } else {
   ND_PRINT((ndo, "PIMv%u, length %u\n\t%s",
             PIM_VER(pim->pim_typever),
             len,
             tok2str(pimv2_type_values,"Unknown Type",PIM_TYPE(pim->pim_typever))));
   pimv2_print(ndo, bp, len, bp2);
  }
  break;
 default:
  ND_PRINT((ndo, "PIMv%u, length %u",
            PIM_VER(pim->pim_typever),
            len));
  break;
 }
 return;

trunc:
 ND_PRINT((ndo, "[|pim]"));
 return;
}
