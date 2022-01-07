
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int u_char ;
struct pkt_dop {int dummy; } ;
struct dophdr {int dh_type; int dh_ts; } ;
typedef int netdissect_options ;


 struct dophdr* DOP_NEXT (struct dophdr const*) ;
 int DT_HOLE ;
 int DT_MAXTYPE ;
 int DT_SKIP ;
 scalar_t__ EXTRACT_32BITS (int *) ;
 int ND_PRINT (int *) ;
 int ND_TTEST (struct dophdr const) ;
 int * dopstr ;
 int tstr ;

__attribute__((used)) static int
wb_dops(netdissect_options *ndo, const struct pkt_dop *dop,
        uint32_t ss, uint32_t es)
{
 const struct dophdr *dh = (const struct dophdr *)((const u_char *)dop + sizeof(*dop));

 ND_PRINT((ndo, " <"));
 for ( ; ss <= es; ++ss) {
  int t;

  if (!ND_TTEST(*dh)) {
   ND_PRINT((ndo, "%s", tstr));
   break;
  }
  t = dh->dh_type;

  if (t > DT_MAXTYPE)
   ND_PRINT((ndo, " dop-%d!", t));
  else {
   ND_PRINT((ndo, " %s", dopstr[t]));
   if (t == DT_SKIP || t == DT_HOLE) {
    uint32_t ts = EXTRACT_32BITS(&dh->dh_ts);
    ND_PRINT((ndo, "%d", ts - ss + 1));
    if (ss > ts || ts > es) {
     ND_PRINT((ndo, "[|]"));
     if (ts < ss)
      return (0);
    }
    ss = ts;
   }
  }
  dh = DOP_NEXT(dh);
 }
 ND_PRINT((ndo, " >"));
 return (0);
}
