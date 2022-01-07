
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int us ;
typedef int ul ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
typedef int u_int ;
typedef scalar_t__ u_char ;
struct TYPE_7__ {int ndo_vflag; int ndo_snapend; } ;
typedef TYPE_1__ netdissect_options ;
typedef int int32_t ;





 scalar_t__ EXTRACT_16BITS (scalar_t__ const*) ;
 int EXTRACT_32BITS (scalar_t__ const*) ;
 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK2 (scalar_t__ const,int) ;
 scalar_t__ ND_TTEST2 (scalar_t__ const,int) ;





 scalar_t__ TAG_DHCP_MESSAGE ;
 scalar_t__ TAG_END ;
 scalar_t__ TAG_EXTENDED_OPTION ;
 scalar_t__ TAG_EXTENDED_REQUEST ;


 scalar_t__ TAG_PAD ;
 scalar_t__ TAG_PARM_REQUEST ;

 int agent_suboption_values ;
 int arp2str ;
 int client_fqdn_flags (scalar_t__ const) ;
 int dhcp_msg_values ;
 int fn_printn (TYPE_1__*,scalar_t__ const*,int,int ) ;
 int htonl (int ) ;
 int ipaddr_string (TYPE_1__*,int *) ;
 int memcpy (char*,char const*,int) ;
 int nbo2str ;
 int oo2str ;
 int print_unknown_data (TYPE_1__*,scalar_t__ const*,char*,int) ;
 int tag2str ;
 char* tok2str (int ,char*,int) ;
 int xtag2str ;

__attribute__((used)) static void
rfc1048_print(netdissect_options *ndo,
       register const u_char *bp)
{
 register uint16_t tag;
 register u_int len;
 register const char *cp;
 register char c;
 int first, idx;
 uint32_t ul;
 uint16_t us;
 uint8_t uc, subopt, suboptlen;

 ND_PRINT((ndo, "\n\t  Vendor-rfc1048 Extensions"));


 ND_PRINT((ndo, "\n\t    Magic Cookie 0x%08x", EXTRACT_32BITS(bp)));
 bp += sizeof(int32_t);


 while (ND_TTEST2(*bp, 1)) {
  tag = *bp++;
  if (tag == TAG_PAD && ndo->ndo_vflag < 3)
   continue;
  if (tag == TAG_END && ndo->ndo_vflag < 3)
   return;
  if (tag == TAG_EXTENDED_OPTION) {
   ND_TCHECK2(*(bp + 1), 2);
   tag = EXTRACT_16BITS(bp + 1);




   cp = tok2str(xtag2str, "?xT%u", tag);
  } else
   cp = tok2str(tag2str, "?T%u", tag);
  c = *cp++;

  if (tag == TAG_PAD || tag == TAG_END)
   len = 0;
  else {

   ND_TCHECK2(*bp, 1);
   len = *bp++;
  }

  ND_PRINT((ndo, "\n\t    %s Option %u, length %u%s", cp, tag, len,
     len > 0 ? ": " : ""));

  if (tag == TAG_PAD && ndo->ndo_vflag > 2) {
   u_int ntag = 1;
   while (ND_TTEST2(*bp, 1) && *bp == TAG_PAD) {
    bp++;
    ntag++;
   }
   if (ntag > 1)
    ND_PRINT((ndo, ", occurs %u", ntag));
  }

  if (!ND_TTEST2(*bp, len)) {
   ND_PRINT((ndo, "[|rfc1048 %u]", len));
   return;
  }

  if (tag == TAG_DHCP_MESSAGE && len == 1) {
   uc = *bp++;
   ND_PRINT((ndo, "%s", tok2str(dhcp_msg_values, "Unknown (%u)", uc)));
   continue;
  }

  if (tag == TAG_PARM_REQUEST) {
   idx = 0;
   while (len-- > 0) {
    uc = *bp++;
    cp = tok2str(tag2str, "?Option %u", uc);
    if (idx % 4 == 0)
     ND_PRINT((ndo, "\n\t      "));
    else
     ND_PRINT((ndo, ", "));
    ND_PRINT((ndo, "%s", cp + 1));
    idx++;
   }
   continue;
  }

  if (tag == TAG_EXTENDED_REQUEST) {
   first = 1;
   while (len > 1) {
    len -= 2;
    us = EXTRACT_16BITS(bp);
    bp += 2;
    cp = tok2str(xtag2str, "?xT%u", us);
    if (!first)
     ND_PRINT((ndo, "+"));
    ND_PRINT((ndo, "%s", cp + 1));
    first = 0;
   }
   continue;
  }


  if (c == '?') {

   if (len & 1)
    c = 'b';
   else if (len & 2)
    c = 's';
   else
    c = 'l';
  }
  first = 1;
  switch (c) {

  case 'a':

   ND_PRINT((ndo, "\""));
   if (fn_printn(ndo, bp, len, ndo->ndo_snapend)) {
    ND_PRINT((ndo, "\""));
    goto trunc;
   }
   ND_PRINT((ndo, "\""));
   bp += len;
   len = 0;
   break;

  case 'i':
  case 'l':
  case 'L':

   while (len >= sizeof(ul)) {
    if (!first)
     ND_PRINT((ndo, ","));
    ul = EXTRACT_32BITS(bp);
    if (c == 'i') {
     ul = htonl(ul);
     ND_PRINT((ndo, "%s", ipaddr_string(ndo, &ul)));
    } else if (c == 'L')
     ND_PRINT((ndo, "%d", ul));
    else
     ND_PRINT((ndo, "%u", ul));
    bp += sizeof(ul);
    len -= sizeof(ul);
    first = 0;
   }
   break;

  case 'p':

   while (len >= 2*sizeof(ul)) {
    if (!first)
     ND_PRINT((ndo, ","));
    memcpy((char *)&ul, (const char *)bp, sizeof(ul));
    ND_PRINT((ndo, "(%s:", ipaddr_string(ndo, &ul)));
    bp += sizeof(ul);
    memcpy((char *)&ul, (const char *)bp, sizeof(ul));
    ND_PRINT((ndo, "%s)", ipaddr_string(ndo, &ul)));
    bp += sizeof(ul);
    len -= 2*sizeof(ul);
    first = 0;
   }
   break;

  case 's':

   while (len >= sizeof(us)) {
    if (!first)
     ND_PRINT((ndo, ","));
    us = EXTRACT_16BITS(bp);
    ND_PRINT((ndo, "%u", us));
    bp += sizeof(us);
    len -= sizeof(us);
    first = 0;
   }
   break;

  case 'B':

   while (len > 0) {
    if (!first)
     ND_PRINT((ndo, ","));
    switch (*bp) {
    case 0:
     ND_PRINT((ndo, "N"));
     break;
    case 1:
     ND_PRINT((ndo, "Y"));
     break;
    default:
     ND_PRINT((ndo, "%u?", *bp));
     break;
    }
    ++bp;
    --len;
    first = 0;
   }
   break;

  case 'b':
  case 'x':
  default:

   while (len > 0) {
    if (!first)
     ND_PRINT((ndo, c == 'x' ? ":" : "."));
    if (c == 'x')
     ND_PRINT((ndo, "%02x", *bp));
    else
     ND_PRINT((ndo, "%u", *bp));
    ++bp;
    --len;
    first = 0;
   }
   break;

  case '$':

   switch (tag) {

   case 130:

    if (len < 1) {
     ND_PRINT((ndo, "ERROR: length < 1 bytes"));
     break;
    }
    tag = *bp++;
    --len;
    ND_PRINT((ndo, "%s", tok2str(nbo2str, ((void*)0), tag)));
    break;

   case 129:

    if (len < 1) {
     ND_PRINT((ndo, "ERROR: length < 1 bytes"));
     break;
    }
    tag = *bp++;
    --len;
    ND_PRINT((ndo, "%s", tok2str(oo2str, ((void*)0), tag)));
    break;

   case 132:

    if (len < 3) {
     ND_PRINT((ndo, "ERROR: length < 3 bytes"));
     bp += len;
     len = 0;
     break;
    }
    if (*bp)
     ND_PRINT((ndo, "[%s] ", client_fqdn_flags(*bp)));
    bp++;
    if (*bp || *(bp+1))
     ND_PRINT((ndo, "%u/%u ", *bp, *(bp+1)));
    bp += 2;
    ND_PRINT((ndo, "\""));
    if (fn_printn(ndo, bp, len - 3, ndo->ndo_snapend)) {
     ND_PRINT((ndo, "\""));
     goto trunc;
    }
    ND_PRINT((ndo, "\""));
    bp += len - 3;
    len = 0;
    break;

   case 131:
       {
    int type;


    if (len < 1) {
     ND_PRINT((ndo, "ERROR: length < 1 bytes"));
     break;
    }
    type = *bp++;
    len--;
    if (type == 0) {
     ND_PRINT((ndo, "\""));
     if (fn_printn(ndo, bp, len, ndo->ndo_snapend)) {
      ND_PRINT((ndo, "\""));
      goto trunc;
     }
     ND_PRINT((ndo, "\""));
     bp += len;
     len = 0;
     break;
    } else {
     ND_PRINT((ndo, "%s ", tok2str(arp2str, "hardware-type %u,", type)));
     while (len > 0) {
      if (!first)
       ND_PRINT((ndo, ":"));
      ND_PRINT((ndo, "%02x", *bp));
      ++bp;
      --len;
      first = 0;
     }
    }
    break;
       }

   case 135:
    while (len >= 2) {
     subopt = *bp++;
     suboptlen = *bp++;
     len -= 2;
     if (suboptlen > len) {
      ND_PRINT((ndo, "\n\t      %s SubOption %u, length %u: length goes past end of option",
         tok2str(agent_suboption_values, "Unknown", subopt),
         subopt,
         suboptlen));
      bp += len;
      len = 0;
      break;
     }
     ND_PRINT((ndo, "\n\t      %s SubOption %u, length %u: ",
        tok2str(agent_suboption_values, "Unknown", subopt),
        subopt,
        suboptlen));
     switch (subopt) {

     case 138:
     case 137:
     case 136:
      if (fn_printn(ndo, bp, suboptlen, ndo->ndo_snapend))
       goto trunc;
      break;

     default:
      print_unknown_data(ndo, bp, "\n\t\t", suboptlen);
     }

     len -= suboptlen;
     bp += suboptlen;
    }
    break;

   case 134:
   case 133:
       {
    u_int mask_width, significant_octets, i;


    if (len < 5) {
     ND_PRINT((ndo, "ERROR: length < 5 bytes"));
     bp += len;
     len = 0;
     break;
    }
    while (len > 0) {
     if (!first)
      ND_PRINT((ndo, ","));
     mask_width = *bp++;
     len--;

     if (mask_width > 32) {
      ND_PRINT((ndo, "[ERROR: Mask width (%d) > 32]", mask_width));
      bp += len;
      len = 0;
      break;
     }
     significant_octets = (mask_width + 7) / 8;

     if (len < significant_octets + 4) {
      ND_PRINT((ndo, "[ERROR: Remaining length (%u) < %u bytes]", len, significant_octets + 4));
      bp += len;
      len = 0;
      break;
     }
     ND_PRINT((ndo, "("));
     if (mask_width == 0)
      ND_PRINT((ndo, "default"));
     else {
      for (i = 0; i < significant_octets ; i++) {
       if (i > 0)
        ND_PRINT((ndo, "."));
       ND_PRINT((ndo, "%d", *bp++));
      }
      for (i = significant_octets ; i < 4 ; i++)
       ND_PRINT((ndo, ".0"));
      ND_PRINT((ndo, "/%d", mask_width));
     }
     memcpy((char *)&ul, (const char *)bp, sizeof(ul));
     ND_PRINT((ndo, ":%s)", ipaddr_string(ndo, &ul)));
     bp += sizeof(ul);
     len -= (significant_octets + 4);
     first = 0;
    }
    break;
       }

   case 128:
       {
    u_int suboptnumber = 1;

    first = 1;
    if (len < 2) {
     ND_PRINT((ndo, "ERROR: length < 2 bytes"));
     bp += len;
     len = 0;
     break;
    }
    while (len > 0) {
     suboptlen = *bp++;
     len--;
     ND_PRINT((ndo, "\n\t      "));
     ND_PRINT((ndo, "instance#%u: ", suboptnumber));
     if (suboptlen == 0) {
      ND_PRINT((ndo, "ERROR: suboption length must be non-zero"));
      bp += len;
      len = 0;
      break;
     }
     if (len < suboptlen) {
      ND_PRINT((ndo, "ERROR: invalid option"));
      bp += len;
      len = 0;
      break;
     }
     ND_PRINT((ndo, "\""));
     if (fn_printn(ndo, bp, suboptlen, ndo->ndo_snapend)) {
      ND_PRINT((ndo, "\""));
      goto trunc;
     }
     ND_PRINT((ndo, "\""));
     ND_PRINT((ndo, ", length %d", suboptlen));
     suboptnumber++;
     len -= suboptlen;
     bp += suboptlen;
    }
    break;
       }

   default:
    ND_PRINT((ndo, "[unknown special tag %u, size %u]",
       tag, len));
    bp += len;
    len = 0;
    break;
   }
   break;
  }

  if (len) {
   ND_PRINT((ndo, "\n\t  trailing data length %u", len));
   bp += len;
  }
 }
 return;
trunc:
 ND_PRINT((ndo, "|[rfc1048]"));
}
