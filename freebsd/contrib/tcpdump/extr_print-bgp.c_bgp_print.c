
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
typedef int u_char ;
struct bgp {int bgp_type; int bgp_len; } ;
struct TYPE_5__ {int const* ndo_snapend; int ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;
typedef int marker ;


 int BGP_SIZE ;
 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK2 (int const,int) ;
 scalar_t__ ND_TTEST2 (int const,int) ;
 int bgp_header_print (TYPE_1__*,int const*,int) ;
 int bgp_msg_values ;
 scalar_t__ memcmp (int const*,int const*,int) ;
 int memcpy (struct bgp*,int const*,int) ;
 int ntohs (int ) ;
 int tok2str (int ,char*,int ) ;

void
bgp_print(netdissect_options *ndo,
          const u_char *dat, int length)
{
 const u_char *p;
 const u_char *ep;
 const u_char *start;
 const u_char marker[] = {
  0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
  0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
 };
 struct bgp bgp;
 uint16_t hlen;

 ep = dat + length;
 if (ndo->ndo_snapend < dat + length)
  ep = ndo->ndo_snapend;

 ND_PRINT((ndo, ": BGP"));

        if (ndo->ndo_vflag < 1)
                return;

 p = dat;
 start = p;
 while (p < ep) {
  if (!ND_TTEST2(p[0], 1))
   break;
  if (p[0] != 0xff) {
   p++;
   continue;
  }

  if (!ND_TTEST2(p[0], sizeof(marker)))
   break;
  if (memcmp(p, marker, sizeof(marker)) != 0) {
   p++;
   continue;
  }


  ND_TCHECK2(p[0], BGP_SIZE);
  memcpy(&bgp, p, BGP_SIZE);

  if (start != p)
   ND_PRINT((ndo, " [|BGP]"));

  hlen = ntohs(bgp.bgp_len);
  if (hlen < BGP_SIZE) {
   ND_PRINT((ndo, "\n[|BGP Bogus header length %u < %u]", hlen,
       BGP_SIZE));
   break;
  }

  if (ND_TTEST2(p[0], hlen)) {
   if (!bgp_header_print(ndo, p, hlen))
    return;
   p += hlen;
   start = p;
  } else {
   ND_PRINT((ndo, "\n[|BGP %s]",
          tok2str(bgp_msg_values,
       "Unknown Message Type",
       bgp.bgp_type)));
   break;
  }
 }

 return;

trunc:
 ND_PRINT((ndo, " [|BGP]"));
}
