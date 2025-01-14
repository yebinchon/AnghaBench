
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int u_int ;
typedef int u_char ;
struct TYPE_5__ {scalar_t__ ndo_eflag; } ;
typedef TYPE_1__ netdissect_options ;


 int ND_PRINT (TYPE_1__*) ;
 int ND_TTEST2 (int const,int) ;
 int PRINT_BA_ACTION (int const) ;
 int PRINT_HT_ACTION (int const) ;
 int PRINT_MESH_ACTION (int const) ;
 int PRINT_MULTIHOP_ACTION (int const) ;
 int PRINT_SELFPROT_ACTION (int const) ;
 int etheraddr_string (TYPE_1__*,int const*) ;

__attribute__((used)) static int
handle_action(netdissect_options *ndo,
              const uint8_t *src, const u_char *p, u_int length)
{
 if (!ND_TTEST2(*p, 2))
  return 0;
 if (length < 2)
  return 0;
 if (ndo->ndo_eflag) {
  ND_PRINT((ndo, ": "));
 } else {
  ND_PRINT((ndo, " (%s): ", etheraddr_string(ndo, src)));
 }
 switch (p[0]) {
 case 0: ND_PRINT((ndo, "Spectrum Management Act#%d", p[1])); break;
 case 1: ND_PRINT((ndo, "QoS Act#%d", p[1])); break;
 case 2: ND_PRINT((ndo, "DLS Act#%d", p[1])); break;
 case 3: ND_PRINT((ndo, "BA ")); PRINT_BA_ACTION(p[1]); break;
 case 7: ND_PRINT((ndo, "HT ")); PRINT_HT_ACTION(p[1]); break;
 case 13: ND_PRINT((ndo, "MeshAction ")); PRINT_MESH_ACTION(p[1]); break;
 case 14:
  ND_PRINT((ndo, "MultiohopAction "));
  PRINT_MULTIHOP_ACTION(p[1]); break;
 case 15:
  ND_PRINT((ndo, "SelfprotectAction "));
  PRINT_SELFPROT_ACTION(p[1]); break;
 case 127: ND_PRINT((ndo, "Vendor Act#%d", p[1])); break;
 default:
  ND_PRINT((ndo, "Reserved(%d) Act#%d", p[0], p[1]));
  break;
 }
 return 1;
}
