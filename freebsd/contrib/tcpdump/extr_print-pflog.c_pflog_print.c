
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct pfloghdr {scalar_t__ uid; int ifname; int dir; int action; int reason; int ruleset; int subrulenr; int rulenr; } ;
typedef int netdissect_options ;


 scalar_t__ EXTRACT_32BITS (int *) ;
 int ND_PRINT (int *) ;
 scalar_t__ UID_MAX ;
 int pf_actions ;
 int pf_directions ;
 int pf_reasons ;
 int tok2str (int ,char*,int ) ;

__attribute__((used)) static void
pflog_print(netdissect_options *ndo, const struct pfloghdr *hdr)
{
 uint32_t rulenr, subrulenr;

 rulenr = EXTRACT_32BITS(&hdr->rulenr);
 subrulenr = EXTRACT_32BITS(&hdr->subrulenr);
 if (subrulenr == (uint32_t)-1)
  ND_PRINT((ndo, "rule %u/", rulenr));
 else
  ND_PRINT((ndo, "rule %u.%s.%u/", rulenr, hdr->ruleset, subrulenr));

 ND_PRINT((ndo, "%s", tok2str(pf_reasons, "unkn(%u)", hdr->reason)));

 if (hdr->uid != UID_MAX)
  ND_PRINT((ndo, " [uid %u]", (unsigned)hdr->uid));

 ND_PRINT((ndo, ": %s %s on %s: ",
     tok2str(pf_actions, "unkn(%u)", hdr->action),
     tok2str(pf_directions, "unkn(%u)", hdr->dir),
     hdr->ifname));
}
