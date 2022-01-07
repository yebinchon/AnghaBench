
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int u_int ;
typedef int u_char ;
struct rip_netinfo {int dummy; } ;
struct rip {int rip_vers; int rip_cmd; } ;
struct TYPE_7__ {int ndo_vflag; int const* ndo_snapend; } ;
typedef TYPE_1__ netdissect_options ;


 int ND_PRINT (TYPE_1__*) ;






 int print_unknown_data (TYPE_1__*,int const*,char*,int) ;
 int rip_cmd_values ;
 int rip_entry_print_v1 (TYPE_1__*,struct rip_netinfo const*) ;
 int rip_entry_print_v2 (TYPE_1__*,struct rip_netinfo const*,int) ;
 int tok2str (int ,char*,int ) ;
 int tstr ;

void
rip_print(netdissect_options *ndo,
          const u_char *dat, u_int length)
{
 register const struct rip *rp;
 register const struct rip_netinfo *ni;
 register u_int i, j;

 if (ndo->ndo_snapend < dat) {
  ND_PRINT((ndo, " %s", tstr));
  return;
 }
 i = ndo->ndo_snapend - dat;
 if (i > length)
  i = length;
 if (i < sizeof(*rp)) {
  ND_PRINT((ndo, " %s", tstr));
  return;
 }
 i -= sizeof(*rp);

 rp = (const struct rip *)dat;

 ND_PRINT((ndo, "%sRIPv%u",
               (ndo->ndo_vflag >= 1) ? "\n\t" : "",
               rp->rip_vers));

 switch (rp->rip_vers) {
 case 0:
                print_unknown_data(ndo, (const uint8_t *)&rp->rip_cmd, "\n\t", length);
  break;
 default:

                ND_PRINT((ndo, ", %s, length: %u",
                       tok2str(rip_cmd_values,
                               "unknown command (%u)",
                               rp->rip_cmd),
                       length));

                if (ndo->ndo_vflag < 1)
                    return;

  switch (rp->rip_cmd) {
  case 131:
  case 130:
   j = length / sizeof(*ni);
   ND_PRINT((ndo, ", routes: %u%s", j, rp->rip_vers == 2 ? " or less" : ""));
   ni = (const struct rip_netinfo *)(rp + 1);
   for (; i >= sizeof(*ni); ++ni) {
    if (rp->rip_vers == 1)
    {
     rip_entry_print_v1(ndo, ni);
     i -= sizeof(*ni);
    }
    else if (rp->rip_vers == 2)
     i -= rip_entry_print_v2(ndo, ni, i);
                                else
                                    break;
   }
   if (i)
    ND_PRINT((ndo, "%s", tstr));
   break;

  case 129:
  case 133:
  case 132:
   break;

  case 128:

         default:
                    if (ndo->ndo_vflag <= 1) {
                        if(!print_unknown_data(ndo, (const uint8_t *)rp, "\n\t", length))
                            return;
                    }
                    break;
                }

                if (ndo->ndo_vflag> 1) {
                    if(!print_unknown_data(ndo, (const uint8_t *)rp, "\n\t", length))
                        return;
                }
        }
}
