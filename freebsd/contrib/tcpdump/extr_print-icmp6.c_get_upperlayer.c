
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
struct udphdr {int uh_dport; } ;
struct ip6_hdr {int ip6_nxt; } ;
struct ip6_hbh {int ip6h_len; int ip6h_nxt; } ;
struct ip6_frag {int ip6f_offlg; int ip6f_nxt; } ;
struct ah {int ah_len; int ah_nxt; } ;
struct TYPE_3__ {int * ndo_snapend; } ;
typedef TYPE_1__ netdissect_options ;


 int EXTRACT_16BITS (int*) ;
 int IP6F_OFF_MASK ;







 scalar_t__ ND_TTEST (int) ;

__attribute__((used)) static const struct udphdr *
get_upperlayer(netdissect_options *ndo, const u_char *bp, u_int *prot)
{
 const u_char *ep;
 const struct ip6_hdr *ip6 = (const struct ip6_hdr *)bp;
 const struct udphdr *uh;
 const struct ip6_hbh *hbh;
 const struct ip6_frag *fragh;
 const struct ah *ah;
 u_int nh;
 int hlen;


 ep = ndo->ndo_snapend;

 if (!ND_TTEST(ip6->ip6_nxt))
  return ((void*)0);

 nh = ip6->ip6_nxt;
 hlen = sizeof(struct ip6_hdr);

 while (bp < ep) {
  bp += hlen;

  switch(nh) {
  case 128:
  case 129:
   uh = (const struct udphdr *)bp;
   if (ND_TTEST(uh->uh_dport)) {
    *prot = nh;
    return(uh);
   }
   else
    return(((void*)0));


  case 131:
  case 133:
  case 130:
   hbh = (const struct ip6_hbh *)bp;
   if (!ND_TTEST(hbh->ip6h_len))
    return(((void*)0));
   nh = hbh->ip6h_nxt;
   hlen = (hbh->ip6h_len + 1) << 3;
   break;

  case 132:
   fragh = (const struct ip6_frag *)bp;
   if (!ND_TTEST(fragh->ip6f_offlg))
    return(((void*)0));

   if ((EXTRACT_16BITS(&fragh->ip6f_offlg) & IP6F_OFF_MASK) != 0)
    return(((void*)0));
   nh = fragh->ip6f_nxt;
   hlen = sizeof(struct ip6_frag);
   break;

  case 134:
   ah = (const struct ah *)bp;
   if (!ND_TTEST(ah->ah_len))
    return(((void*)0));
   nh = ah->ah_nxt;
   hlen = (ah->ah_len + 2) << 2;
   break;

  default:
   *prot = nh;
   return(((void*)0));
  }
 }

 return(((void*)0));
}
