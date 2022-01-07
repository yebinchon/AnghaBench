
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
struct tcphdr {int dummy; } ;
struct ip {int dummy; } ;
typedef int netdissect_options ;
typedef int int32_t ;


 int IP_HL (struct ip const*) ;
 int ND_PRINT (int *) ;
 int NEW_A ;
 int NEW_C ;
 int NEW_I ;
 int NEW_S ;
 int NEW_U ;
 int NEW_W ;
 int SPECIALS_MASK ;


 scalar_t__ TH_OFF (struct tcphdr const*) ;
 size_t lastconn ;
 int** lastlen ;
 int * print_sl_change (int *,char*,int const*) ;
 int * print_sl_winchange (int *,int const*) ;

__attribute__((used)) static void
compressed_sl_print(netdissect_options *ndo,
                    const u_char *chdr, const struct ip *ip,
                    u_int length, int dir)
{
 register const u_char *cp = chdr;
 register u_int flags, hlen;

 flags = *cp++;
 if (flags & NEW_C) {
  lastconn = *cp++;
  ND_PRINT((ndo, "ctcp %d", lastconn));
 } else
  ND_PRINT((ndo, "ctcp *"));


 cp += 2;

 switch (flags & SPECIALS_MASK) {
 case 128:
  ND_PRINT((ndo, " *SA+%d", lastlen[dir][lastconn]));
  break;

 case 129:
  ND_PRINT((ndo, " *S+%d", lastlen[dir][lastconn]));
  break;

 default:
  if (flags & NEW_U)
   cp = print_sl_change(ndo, "U=", cp);
  if (flags & NEW_W)
   cp = print_sl_winchange(ndo, cp);
  if (flags & NEW_A)
   cp = print_sl_change(ndo, "A+", cp);
  if (flags & NEW_S)
   cp = print_sl_change(ndo, "S+", cp);
  break;
 }
 if (flags & NEW_I)
  cp = print_sl_change(ndo, "I+", cp);






 hlen = IP_HL(ip);
 hlen += TH_OFF((const struct tcphdr *)&((const int32_t *)ip)[hlen]);
 lastlen[dir][lastconn] = length - (hlen << 2);
 ND_PRINT((ndo, " %d (%ld)", lastlen[dir][lastconn], (long)(cp - chdr)));
}
