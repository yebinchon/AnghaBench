
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef int u_int ;
typedef int u_char ;
struct pim {int const pim_rsv; int const pim_cksum; int pim_typever; } ;
struct ip {int const ip_vhl; int const ip_dst; int const ip_src; } ;
struct TYPE_11__ {int ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;
typedef enum checksum_status { ____Placeholder_checksum_status } checksum_status ;



 int EXTRACT_16BITS (int const*) ;
 int EXTRACT_32BITS (int const*) ;

 int IP_V (struct ip const*) ;
 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK (int const) ;
 int ND_TCHECK2 (int const,int) ;
 int ND_TCHECK_16BITS (int const*) ;
 int PIMV2_REGISTER_FLAG_LEN ;
 int PIM_TYPE (int ) ;

 int ip6_print (TYPE_1__*,int const*,int) ;
 int ip_print (TYPE_1__*,int const*,int) ;
 int ipaddr_string (TYPE_1__*,int const*) ;
 int pimv2_addr_print (TYPE_1__*,int const*,int,int ,int,int ) ;
 int pimv2_check_checksum (TYPE_1__*,int const*,int const*,int) ;
 int pimv2_group ;
 int pimv2_hello_option_values ;
 int pimv2_register_flag_values ;
 int pimv2_source ;
 int pimv2_unicast ;
 int print_unknown_data (TYPE_1__*,int const*,char*,int) ;
 int tok2str (int ,char*,int) ;
 int unsigned_relts_print (TYPE_1__*,int const) ;

__attribute__((used)) static void
pimv2_print(netdissect_options *ndo,
            register const u_char *bp, register u_int len, const u_char *bp2)
{
 register const struct pim *pim = (const struct pim *)bp;
 int advance;
 enum checksum_status cksum_status;
 int pimv2_addr_len;

 if (len < 2)
  goto trunc;
 ND_TCHECK(pim->pim_rsv);
 pimv2_addr_len = pim->pim_rsv;
 if (pimv2_addr_len != 0)
  ND_PRINT((ndo, ", RFC2117-encoding"));

 if (len < 4)
  goto trunc;
 ND_TCHECK(pim->pim_cksum);
 ND_PRINT((ndo, ", cksum 0x%04x ", EXTRACT_16BITS(&pim->pim_cksum)));
 if (EXTRACT_16BITS(&pim->pim_cksum) == 0) {
  ND_PRINT((ndo, "(unverified)"));
 } else {
  if (PIM_TYPE(pim->pim_typever) == 130) {




   cksum_status = pimv2_check_checksum(ndo, bp, bp2, 8);
   if (cksum_status == 148) {






    cksum_status = pimv2_check_checksum(ndo, bp, bp2, len);
   }
  } else {



   cksum_status = pimv2_check_checksum(ndo, bp, bp2, len);
  }
  switch (cksum_status) {

  case 149:
   ND_PRINT((ndo, "(correct)"));
   break;

  case 148:
   ND_PRINT((ndo, "(incorrect)"));
   break;

  case 128:
   ND_PRINT((ndo, "(unverified)"));
   break;
  }
 }
 bp += 4;
 len -= 4;

 switch (PIM_TYPE(pim->pim_typever)) {
 case 133:
     {
  uint16_t otype, olen;
  while (len > 0) {
   if (len < 4)
    goto trunc;
   ND_TCHECK2(bp[0], 4);
   otype = EXTRACT_16BITS(&bp[0]);
   olen = EXTRACT_16BITS(&bp[2]);
   ND_PRINT((ndo, "\n\t  %s Option (%u), length %u, Value: ",
             tok2str(pimv2_hello_option_values, "Unknown", otype),
             otype,
             olen));
   bp += 4;
   len -= 4;

   if (len < olen)
    goto trunc;
   ND_TCHECK2(bp[0], olen);
   switch (otype) {
   case 141:
    if (olen != 2) {
     ND_PRINT((ndo, "ERROR: Option Length != 2 Bytes (%u)", olen));
    } else {
     unsigned_relts_print(ndo, EXTRACT_16BITS(bp));
    }
    break;

   case 140:
    if (olen != 4) {
     ND_PRINT((ndo, "ERROR: Option Length != 4 Bytes (%u)", olen));
    } else {
     char t_bit;
     uint16_t lan_delay, override_interval;
     lan_delay = EXTRACT_16BITS(bp);
     override_interval = EXTRACT_16BITS(bp+2);
     t_bit = (lan_delay & 0x8000)? 1 : 0;
     lan_delay &= ~0x8000;
     ND_PRINT((ndo, "\n\t    T-bit=%d, LAN delay %dms, Override interval %dms",
     t_bit, lan_delay, override_interval));
    }
    break;

   case 143:
   case 144:
    switch (olen) {
    case 0:
     ND_PRINT((ndo, "Bi-Directional Capability (Old)"));
     break;
    case 4:
     ND_PRINT((ndo, "%u", EXTRACT_32BITS(bp)));
     break;
    default:
     ND_PRINT((ndo, "ERROR: Option Length != 4 Bytes (%u)", olen));
     break;
    }
    break;

   case 142:
    if (olen != 4) {
     ND_PRINT((ndo, "ERROR: Option Length != 4 Bytes (%u)", olen));
    } else {
     ND_PRINT((ndo, "0x%08x", EXTRACT_32BITS(bp)));
    }
    break;

   case 139:
    if (olen != 4) {
     ND_PRINT((ndo, "ERROR: Option Length != 4 Bytes (%u)", olen));
    } else {
     ND_PRINT((ndo, "v%d", *bp));
     if (*(bp+1) != 0) {
      ND_PRINT((ndo, ", interval "));
      unsigned_relts_print(ndo, *(bp+1));
     }
     if (EXTRACT_16BITS(bp+2) != 0) {
      ND_PRINT((ndo, " ?0x%04x?", EXTRACT_16BITS(bp+2)));
     }
    }
    break;

   case 145:
    break;

   case 146:
   case 147:
    if (ndo->ndo_vflag > 1) {
     const u_char *ptr = bp;
     u_int plen = len;
     while (ptr < (bp+olen)) {
      ND_PRINT((ndo, "\n\t    "));
      advance = pimv2_addr_print(ndo, ptr, plen, pimv2_unicast, pimv2_addr_len, 0);
      if (advance < 0)
       goto trunc;
      ptr += advance;
      plen -= advance;
     }
    }
    break;
   default:
    if (ndo->ndo_vflag <= 1)
     print_unknown_data(ndo, bp, "\n\t    ", olen);
    break;
   }

   if (ndo->ndo_vflag> 1)
    print_unknown_data(ndo, bp, "\n\t    ", olen);
   bp += olen;
   len -= olen;
  }
  break;
     }

 case 130:
 {
  const struct ip *ip;

  if (len < 4)
   goto trunc;
  ND_TCHECK2(*bp, PIMV2_REGISTER_FLAG_LEN);

  ND_PRINT((ndo, ", Flags [ %s ]\n\t",
            tok2str(pimv2_register_flag_values,
            "none",
            EXTRACT_32BITS(bp))));

  bp += 4; len -= 4;

  if (len == 0)
   goto trunc;
  ip = (const struct ip *)bp;
  ND_TCHECK(ip->ip_vhl);
  switch (IP_V(ip)) {
                case 0:
   ND_TCHECK(ip->ip_dst);
   ND_PRINT((ndo, "IP-Null-header %s > %s",
             ipaddr_string(ndo, &ip->ip_src),
             ipaddr_string(ndo, &ip->ip_dst)));
   break;

  case 4:
   ip_print(ndo, bp, len);
   break;

  case 6:
   ip6_print(ndo, bp, len);
   break;

  default:
   ND_PRINT((ndo, "IP ver %d", IP_V(ip)));
   break;
  }
  break;
 }

 case 129:
  ND_PRINT((ndo, " group="));
  if ((advance = pimv2_addr_print(ndo, bp, len, pimv2_group, pimv2_addr_len, 0)) < 0)
   goto trunc;
  bp += advance; len -= advance;
  ND_PRINT((ndo, " source="));
  if ((advance = pimv2_addr_print(ndo, bp, len, pimv2_unicast, pimv2_addr_len, 0)) < 0)
   goto trunc;
  bp += advance; len -= advance;
  break;

 case 132:
 case 135:
 case 134:
     {
  uint8_t ngroup;
  uint16_t holdtime;
  uint16_t njoin;
  uint16_t nprune;
  int i, j;

  if (PIM_TYPE(pim->pim_typever) != 7) {
   ND_PRINT((ndo, ", upstream-neighbor: "));
   if ((advance = pimv2_addr_print(ndo, bp, len, pimv2_unicast, pimv2_addr_len, 0)) < 0)
    goto trunc;
   bp += advance; len -= advance;
  }
  if (len < 4)
   goto trunc;
  ND_TCHECK2(*bp, 4);
  ngroup = bp[1];
  holdtime = EXTRACT_16BITS(&bp[2]);
  ND_PRINT((ndo, "\n\t  %u group(s)", ngroup));
  if (PIM_TYPE(pim->pim_typever) != 7) {
   ND_PRINT((ndo, ", holdtime: "));
   if (holdtime == 0xffff)
    ND_PRINT((ndo, "infinite"));
   else
    unsigned_relts_print(ndo, holdtime);
  }
  bp += 4; len -= 4;
  for (i = 0; i < ngroup; i++) {
   ND_PRINT((ndo, "\n\t    group #%u: ", i+1));
   if ((advance = pimv2_addr_print(ndo, bp, len, pimv2_group, pimv2_addr_len, 0)) < 0)
    goto trunc;
   bp += advance; len -= advance;
   if (len < 4)
    goto trunc;
   ND_TCHECK2(*bp, 4);
   njoin = EXTRACT_16BITS(&bp[0]);
   nprune = EXTRACT_16BITS(&bp[2]);
   ND_PRINT((ndo, ", joined sources: %u, pruned sources: %u", njoin, nprune));
   bp += 4; len -= 4;
   for (j = 0; j < njoin; j++) {
    ND_PRINT((ndo, "\n\t      joined source #%u: ", j+1));
    if ((advance = pimv2_addr_print(ndo, bp, len, pimv2_source, pimv2_addr_len, 0)) < 0)
     goto trunc;
    bp += advance; len -= advance;
   }
   for (j = 0; j < nprune; j++) {
    ND_PRINT((ndo, "\n\t      pruned source #%u: ", j+1));
    if ((advance = pimv2_addr_print(ndo, bp, len, pimv2_source, pimv2_addr_len, 0)) < 0)
     goto trunc;
    bp += advance; len -= advance;
   }
  }
  break;
     }

 case 137:
 {
  int i, j, frpcnt;


  if (len < 2)
   goto trunc;
  ND_TCHECK_16BITS(bp);
  ND_PRINT((ndo, " tag=%x", EXTRACT_16BITS(bp)));
  bp += 2;
  len -= 2;
  if (len < 1)
   goto trunc;
  ND_TCHECK(bp[0]);
  ND_PRINT((ndo, " hashmlen=%d", bp[0]));
  if (len < 2)
   goto trunc;
  ND_TCHECK(bp[2]);
  ND_PRINT((ndo, " BSRprio=%d", bp[1]));
  bp += 2;
  len -= 2;


  ND_PRINT((ndo, " BSR="));
  if ((advance = pimv2_addr_print(ndo, bp, len, pimv2_unicast, pimv2_addr_len, 0)) < 0)
   goto trunc;
  bp += advance;
  len -= advance;

  for (i = 0; len > 0; i++) {

   ND_PRINT((ndo, " (group%d: ", i));
   if ((advance = pimv2_addr_print(ndo, bp, len, pimv2_group, pimv2_addr_len, 0)) < 0)
    goto trunc;
   bp += advance;
   len -= advance;


   if (len < 1)
    goto trunc;
   ND_TCHECK(bp[0]);
   ND_PRINT((ndo, " RPcnt=%d", bp[0]));
   if (len < 2)
    goto trunc;
   ND_TCHECK(bp[1]);
   ND_PRINT((ndo, " FRPcnt=%d", frpcnt = bp[1]));
   if (len < 4)
    goto trunc;
   bp += 4;
   len -= 4;

   for (j = 0; j < frpcnt && len > 0; j++) {

    ND_PRINT((ndo, " RP%d=", j));
    if ((advance = pimv2_addr_print(ndo, bp, len,
        pimv2_unicast,
        pimv2_addr_len,
        0)) < 0)
     goto trunc;
    bp += advance;
    len -= advance;

    if (len < 2)
     goto trunc;
    ND_TCHECK_16BITS(bp);
    ND_PRINT((ndo, ",holdtime="));
    unsigned_relts_print(ndo, EXTRACT_16BITS(bp));
    if (len < 3)
     goto trunc;
    ND_TCHECK(bp[2]);
    ND_PRINT((ndo, ",prio=%d", bp[2]));
    if (len < 4)
     goto trunc;
    bp += 4;
    len -= 4;
   }
   ND_PRINT((ndo, ")"));
  }
  break;
 }
 case 138:
  ND_PRINT((ndo, " group="));
  if ((advance = pimv2_addr_print(ndo, bp, len, pimv2_group, pimv2_addr_len, 0)) < 0)
   goto trunc;
  bp += advance; len -= advance;
  ND_PRINT((ndo, " src="));
  if ((advance = pimv2_addr_print(ndo, bp, len, pimv2_unicast, pimv2_addr_len, 0)) < 0)
   goto trunc;
  bp += advance; len -= advance;
  if (len < 8)
   goto trunc;
  ND_TCHECK2(*bp, 8);
  if (bp[0] & 0x80)
   ND_PRINT((ndo, " RPT"));
  ND_PRINT((ndo, " pref=%u", EXTRACT_32BITS(&bp[0]) & 0x7fffffff));
  ND_PRINT((ndo, " metric=%u", EXTRACT_32BITS(&bp[4])));
  break;

 case 136:
 {
  int i, pfxcnt;


  if (len < 1)
   goto trunc;
  ND_TCHECK(bp[0]);
  ND_PRINT((ndo, " prefix-cnt=%d", bp[0]));
  pfxcnt = bp[0];
  if (len < 2)
   goto trunc;
  ND_TCHECK(bp[1]);
  ND_PRINT((ndo, " prio=%d", bp[1]));
  if (len < 4)
   goto trunc;
  ND_TCHECK_16BITS(&bp[2]);
  ND_PRINT((ndo, " holdtime="));
  unsigned_relts_print(ndo, EXTRACT_16BITS(&bp[2]));
  bp += 4;
  len -= 4;


  ND_PRINT((ndo, " RP="));
  if ((advance = pimv2_addr_print(ndo, bp, len, pimv2_unicast, pimv2_addr_len, 0)) < 0)
   goto trunc;
  bp += advance;
  len -= advance;


  for (i = 0; i < pfxcnt && len > 0; i++) {
   ND_PRINT((ndo, " Group%d=", i));
   if ((advance = pimv2_addr_print(ndo, bp, len, pimv2_group, pimv2_addr_len, 0)) < 0)
    goto trunc;
   bp += advance;
   len -= advance;
  }
  break;
 }

 case 131:
  ND_PRINT((ndo, " src="));
  if ((advance = pimv2_addr_print(ndo, bp, len, pimv2_unicast, pimv2_addr_len, 0)) < 0)
   goto trunc;
  bp += advance;
  len -= advance;
  ND_PRINT((ndo, " grp="));
  if ((advance = pimv2_addr_print(ndo, bp, len, pimv2_group, pimv2_addr_len, 0)) < 0)
   goto trunc;
  bp += advance;
  len -= advance;
  ND_PRINT((ndo, " forwarder="));
  if ((advance = pimv2_addr_print(ndo, bp, len, pimv2_unicast, pimv2_addr_len, 0)) < 0)
   goto trunc;
  bp += advance;
  len -= advance;
  if (len < 2)
   goto trunc;
  ND_TCHECK_16BITS(bp);
  ND_PRINT((ndo, " TUNR "));
  unsigned_relts_print(ndo, EXTRACT_16BITS(bp));
  break;


  default:
  ND_PRINT((ndo, " [type %d]", PIM_TYPE(pim->pim_typever)));
  break;
 }

 return;

trunc:
 ND_PRINT((ndo, "[|pim]"));
}
