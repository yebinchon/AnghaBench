
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u_int ;
typedef int u_char ;
struct tcphdr {int dummy; } ;
struct ip {size_t ip_p; } ;
struct TYPE_5__ {scalar_t__ ndo_nflag; } ;
typedef TYPE_1__ netdissect_options ;


 int CHDR_LEN ;
 size_t IP_HL (struct ip const*) ;
 int ND_PRINT (TYPE_1__*) ;


 size_t SLIP_HDRLEN ;
 int SLX_CHDR ;
 size_t SLX_DIR ;
 size_t TH_OFF (struct tcphdr const*) ;
 int const TYPE_COMPRESSED_TCP ;


 int compressed_sl_print (TYPE_1__*,int const*,struct ip const*,size_t,int) ;
 size_t lastconn ;
 size_t** lastlen ;

__attribute__((used)) static void
sliplink_print(netdissect_options *ndo,
               register const u_char *p, register const struct ip *ip,
               register u_int length)
{
 int dir;
 u_int hlen;

 dir = p[SLX_DIR];
 switch (dir) {

 case 131:
  ND_PRINT((ndo, "I "));
  break;

 case 130:
  ND_PRINT((ndo, "O "));
  break;

 default:
  ND_PRINT((ndo, "Invalid direction %d ", dir));
  dir = -1;
  break;
 }
 if (ndo->ndo_nflag) {

  register int i;

  for (i = SLX_CHDR; i < SLX_CHDR + CHDR_LEN - 1; ++i)
   ND_PRINT((ndo, "%02x.", p[i]));
  ND_PRINT((ndo, "%02x: ", p[SLX_CHDR + CHDR_LEN - 1]));
  return;
 }
 switch (p[SLX_CHDR] & 0xf0) {

 case 129:
  ND_PRINT((ndo, "ip %d: ", length + SLIP_HDRLEN));
  break;

 case 128:





  lastconn = ((const struct ip *)&p[SLX_CHDR])->ip_p;
  ND_PRINT((ndo, "utcp %d: ", lastconn));
  if (dir == -1) {

   return;
  }
  hlen = IP_HL(ip);
  hlen += TH_OFF((const struct tcphdr *)&((const int *)ip)[hlen]);
  lastlen[dir][lastconn] = length - (hlen << 2);
  break;

 default:
  if (dir == -1) {

   return;
  }
  if (p[SLX_CHDR] & TYPE_COMPRESSED_TCP) {
   compressed_sl_print(ndo, &p[SLX_CHDR], ip,
       length, dir);
   ND_PRINT((ndo, ": "));
  } else
   ND_PRINT((ndo, "slip-%d!: ", p[SLX_CHDR]));
 }
}
