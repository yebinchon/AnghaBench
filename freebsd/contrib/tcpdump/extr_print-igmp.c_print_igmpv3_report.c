
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
struct TYPE_5__ {int ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;


 int EXTRACT_16BITS (int const*) ;
 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK2 (int const,int) ;
 int igmpv3report2str ;
 int ipaddr_string (TYPE_1__*,int const*) ;
 int tok2str (int ,char*,int const) ;
 int tstr ;

__attribute__((used)) static void
print_igmpv3_report(netdissect_options *ndo,
                    register const u_char *bp, register u_int len)
{
    u_int group, nsrcs, ngroups;
    register u_int i, j;


    if (len < 16 || len & 0x03) {
 ND_PRINT((ndo, " [invalid len %d]", len));
 return;
    }
    ND_TCHECK2(bp[6], 2);
    ngroups = EXTRACT_16BITS(&bp[6]);
    ND_PRINT((ndo, ", %d group record(s)", ngroups));
    if (ndo->ndo_vflag > 0) {

 group = 8;
        for (i=0; i<ngroups; i++) {
     if (len < group+8) {
  ND_PRINT((ndo, " [invalid number of groups]"));
  return;
     }
     ND_TCHECK2(bp[group+4], 4);
            ND_PRINT((ndo, " [gaddr %s", ipaddr_string(ndo, &bp[group+4])));
     ND_PRINT((ndo, " %s", tok2str(igmpv3report2str, " [v3-report-#%d]",
        bp[group])));
            nsrcs = EXTRACT_16BITS(&bp[group+2]);

     if (len < group+8+(nsrcs<<2)) {
  ND_PRINT((ndo, " [invalid number of sources %d]", nsrcs));
  return;
     }
            if (ndo->ndo_vflag == 1)
                ND_PRINT((ndo, ", %d source(s)", nsrcs));
            else {

                ND_PRINT((ndo, " {"));
                for (j=0; j<nsrcs; j++) {
      ND_TCHECK2(bp[group+8+(j<<2)], 4);
      ND_PRINT((ndo, " %s", ipaddr_string(ndo, &bp[group+8+(j<<2)])));
  }
                ND_PRINT((ndo, " }"));
            }

            group += 8 + (nsrcs << 2);
     ND_PRINT((ndo, "]"));
        }
    }
    return;
trunc:
    ND_PRINT((ndo, "%s", tstr));
}
