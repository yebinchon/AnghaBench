
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef size_t uint16_t ;
typedef int u_int ;
typedef scalar_t__ u_char ;
struct dhcp6opt {scalar_t__ const dh6opt_type; scalar_t__ const dh6opt_len; } ;
typedef int netdissect_options ;
 size_t EXTRACT_16BITS (scalar_t__ const*) ;
 int EXTRACT_32BITS (scalar_t__ const*) ;
 int ND_PRINT (int *) ;
 int ND_TCHECK (struct dhcp6opt const) ;
 int ND_TCHECK2 (scalar_t__ const,size_t) ;
 int dh6opt_str ;
 int dhcp6_print (int *,scalar_t__ const*,size_t) ;
 int dhcp6stcode (size_t) ;
 int fn_printn (int *,scalar_t__ const*,int,int *) ;
 int ip6addr_string (int *,scalar_t__ const*) ;
 scalar_t__* ns_nprint (int *,scalar_t__ const*,scalar_t__ const*) ;
 int tok2str (int ,char*,size_t) ;

__attribute__((used)) static void
dhcp6opt_print(netdissect_options *ndo,
               const u_char *cp, const u_char *ep)
{
 const struct dhcp6opt *dh6o;
 const u_char *tp;
 size_t i;
 uint16_t opttype;
 size_t optlen;
 uint8_t auth_proto;
 u_int authinfolen, authrealmlen;
 int remain_len;
 int label_len;
 uint16_t subopt_code;
 uint16_t subopt_len;

 if (cp == ep)
  return;
 while (cp < ep) {
  if (ep < cp + sizeof(*dh6o))
   goto trunc;
  dh6o = (const struct dhcp6opt *)cp;
  ND_TCHECK(*dh6o);
  optlen = EXTRACT_16BITS(&dh6o->dh6opt_len);
  if (ep < cp + sizeof(*dh6o) + optlen)
   goto trunc;
  opttype = EXTRACT_16BITS(&dh6o->dh6opt_type);
  ND_PRINT((ndo, " (%s", tok2str(dh6opt_str, "opt_%u", opttype)));
  ND_TCHECK2(*(cp + sizeof(*dh6o)), optlen);
  switch (opttype) {
  case 169:
  case 135:
   if (optlen < 2) {

    ND_PRINT((ndo, " ?)"));
    break;
   }
   tp = (const u_char *)(dh6o + 1);
   switch (EXTRACT_16BITS(tp)) {
   case 1:
    if (optlen >= 2 + 6) {
     ND_PRINT((ndo, " hwaddr/time type %u time %u ",
         EXTRACT_16BITS(&tp[2]),
         EXTRACT_32BITS(&tp[4])));
     for (i = 8; i < optlen; i++)
      ND_PRINT((ndo, "%02x", tp[i]));

     ND_PRINT((ndo, ")"));
    } else {

     ND_PRINT((ndo, " ?)"));
    }
    break;
   case 2:
    if (optlen >= 2 + 8) {
     ND_PRINT((ndo, " vid "));
     for (i = 2; i < 2 + 8; i++)
      ND_PRINT((ndo, "%02x", tp[i]));

     ND_PRINT((ndo, ")"));
    } else {

     ND_PRINT((ndo, " ?)"));
    }
    break;
   case 3:
    if (optlen >= 2 + 2) {
     ND_PRINT((ndo, " hwaddr type %u ",
         EXTRACT_16BITS(&tp[2])));
     for (i = 4; i < optlen; i++)
      ND_PRINT((ndo, "%02x", tp[i]));

     ND_PRINT((ndo, ")"));
    } else {

     ND_PRINT((ndo, " ?)"));
    }
    break;
   default:
    ND_PRINT((ndo, " type %d)", EXTRACT_16BITS(tp)));
    break;
   }
   break;
  case 162:
   if (optlen < 24) {

    ND_PRINT((ndo, " ?)"));
    break;
   }
   tp = (const u_char *)(dh6o + 1);
   ND_PRINT((ndo, " %s", ip6addr_string(ndo, &tp[0])));
   ND_PRINT((ndo, " pltime:%u vltime:%u",
       EXTRACT_32BITS(&tp[16]),
       EXTRACT_32BITS(&tp[20])));
   if (optlen > 24) {

    dhcp6opt_print(ndo, tp + 24, tp + optlen);
   }
   ND_PRINT((ndo, ")"));
   break;
  case 143:
  case 163:
   if (optlen % 2) {
    ND_PRINT((ndo, " ?)"));
    break;
   }
   tp = (const u_char *)(dh6o + 1);
   for (i = 0; i < optlen; i += 2) {
    ND_PRINT((ndo, " %s",
        tok2str(dh6opt_str, "opt_%u", EXTRACT_16BITS(&tp[i]))));
   }
   ND_PRINT((ndo, ")"));
   break;
  case 141:
   if (optlen != 1) {
    ND_PRINT((ndo, " ?)"));
    break;
   }
   tp = (const u_char *)(dh6o + 1);
   ND_PRINT((ndo, " %d)", *tp));
   break;
  case 164:
   if (optlen != 2) {
    ND_PRINT((ndo, " ?)"));
    break;
   }
   tp = (const u_char *)(dh6o + 1);
   ND_PRINT((ndo, " %d)", EXTRACT_16BITS(tp)));
   break;
  case 137:
   ND_PRINT((ndo, " ("));
   tp = (const u_char *)(dh6o + 1);
   dhcp6_print(ndo, tp, optlen);
   ND_PRINT((ndo, ")"));
   break;
  case 177:
   if (optlen < 11) {
    ND_PRINT((ndo, " ?)"));
    break;
   }
   tp = (const u_char *)(dh6o + 1);
   auth_proto = *tp;
   switch (auth_proto) {
   case 175:
    ND_PRINT((ndo, " proto: delayed"));
    break;
   case 174:
    ND_PRINT((ndo, " proto: reconfigure"));
    break;
   default:
    ND_PRINT((ndo, " proto: %d", auth_proto));
    break;
   }
   tp++;
   switch (*tp) {
   case 176:

    ND_PRINT((ndo, ", alg: HMAC-MD5"));
    break;
   default:
    ND_PRINT((ndo, ", alg: %d", *tp));
    break;
   }
   tp++;
   switch (*tp) {
   case 173:
    ND_PRINT((ndo, ", RDM: mono"));
    break;
   default:
    ND_PRINT((ndo, ", RDM: %d", *tp));
    break;
   }
   tp++;
   ND_PRINT((ndo, ", RD:"));
   for (i = 0; i < 4; i++, tp += 2)
    ND_PRINT((ndo, " %04x", EXTRACT_16BITS(tp)));


   authinfolen = optlen - 11;
   switch (auth_proto) {
   case 175:
    if (authinfolen == 0)
     break;
    if (authinfolen < 20) {
     ND_PRINT((ndo, " ??"));
     break;
    }
    authrealmlen = authinfolen - 20;
    if (authrealmlen > 0) {
     ND_PRINT((ndo, ", realm: "));
    }
    for (i = 0; i < authrealmlen; i++, tp++)
     ND_PRINT((ndo, "%02x", *tp));
    ND_PRINT((ndo, ", key ID: %08x", EXTRACT_32BITS(tp)));
    tp += 4;
    ND_PRINT((ndo, ", HMAC-MD5:"));
    for (i = 0; i < 4; i++, tp+= 4)
     ND_PRINT((ndo, " %08x", EXTRACT_32BITS(tp)));
    break;
   case 174:
    if (authinfolen != 17) {
     ND_PRINT((ndo, " ??"));
     break;
    }
    switch (*tp++) {
    case 171:
     ND_PRINT((ndo, " reconfig-key"));
     break;
    case 172:
     ND_PRINT((ndo, " type: HMAC-MD5"));
     break;
    default:
     ND_PRINT((ndo, " type: ??"));
     break;
    }
    ND_PRINT((ndo, " value:"));
    for (i = 0; i < 4; i++, tp+= 4)
     ND_PRINT((ndo, " %08x", EXTRACT_32BITS(tp)));
    break;
   default:
    ND_PRINT((ndo, " ??"));
    break;
   }

   ND_PRINT((ndo, ")"));
   break;
  case 140:
   ND_PRINT((ndo, ")"));
   break;
  case 157:
  case 130:




   tp = (const u_char *)(dh6o + 1);
   ND_PRINT((ndo, " "));
   for (i = 0; i < optlen && i < 10; i++)
    ND_PRINT((ndo, "%02x", tp[i]));
   ND_PRINT((ndo, "...)"));
   break;
  case 138:
   if (optlen != 1) {
    ND_PRINT((ndo, " ?)"));
    break;
   }
   tp = (const u_char *)(dh6o + 1);
   switch (*tp) {
   case 128:
    ND_PRINT((ndo, " for renew)"));
    break;
   case 129:
    ND_PRINT((ndo, " for inf-req)"));
    break;
   default:
    ND_PRINT((ndo, " for ?\?\?(%02x))", *tp));
    break;
   }
   break;
  case 139:
   ND_PRINT((ndo, ")"));
   break;
  case 134:
  case 166:
  case 132:
  case 148:
  case 149:
  case 170:
  case 142:
  case 155:
   if (optlen % 16) {
    ND_PRINT((ndo, " ?)"));
    break;
   }
   tp = (const u_char *)(dh6o + 1);
   for (i = 0; i < optlen; i += 16)
    ND_PRINT((ndo, " %s", ip6addr_string(ndo, &tp[i])));
   ND_PRINT((ndo, ")"));
   break;
  case 133:
  case 165:
   tp = (const u_char *)(dh6o + 1);
   while (tp < cp + sizeof(*dh6o) + optlen) {
    ND_PRINT((ndo, " "));
    if ((tp = ns_nprint(ndo, tp, cp + sizeof(*dh6o) + optlen)) == ((void*)0))
     goto trunc;
   }
   ND_PRINT((ndo, ")"));
   break;
  case 131:
   if (optlen < 2) {
    ND_PRINT((ndo, " ?)"));
    break;
   }
   tp = (const u_char *)(dh6o + 1);
   ND_PRINT((ndo, " %s)", dhcp6stcode(EXTRACT_16BITS(&tp[0]))));
   break;
  case 161:
  case 160:
   if (optlen < 12) {
    ND_PRINT((ndo, " ?)"));
    break;
   }
   tp = (const u_char *)(dh6o + 1);
   ND_PRINT((ndo, " IAID:%u T1:%u T2:%u",
       EXTRACT_32BITS(&tp[0]),
       EXTRACT_32BITS(&tp[4]),
       EXTRACT_32BITS(&tp[8])));
   if (optlen > 12) {

    dhcp6opt_print(ndo, tp + 12, tp + optlen);
   }
   ND_PRINT((ndo, ")"));
   break;
  case 158:
   if (optlen < 4) {
    ND_PRINT((ndo, " ?)"));
    break;
   }
   tp = (const u_char *)(dh6o + 1);
   ND_PRINT((ndo, " IAID:%u", EXTRACT_32BITS(tp)));
   if (optlen > 4) {

    dhcp6opt_print(ndo, tp + 4, tp + optlen);
   }
   ND_PRINT((ndo, ")"));
   break;
  case 159:
   if (optlen < 25) {
    ND_PRINT((ndo, " ?)"));
    break;
   }
   tp = (const u_char *)(dh6o + 1);
   ND_PRINT((ndo, " %s/%d", ip6addr_string(ndo, &tp[9]), tp[8]));
   ND_PRINT((ndo, " pltime:%u vltime:%u",
       EXTRACT_32BITS(&tp[0]),
       EXTRACT_32BITS(&tp[4])));
   if (optlen > 25) {

    dhcp6opt_print(ndo, tp + 25, tp + optlen);
   }
   ND_PRINT((ndo, ")"));
   break;
  case 156:
  case 167:
   if (optlen != 4) {
    ND_PRINT((ndo, " ?)"));
    break;
   }
   tp = (const u_char *)(dh6o + 1);
   ND_PRINT((ndo, " %d)", EXTRACT_32BITS(tp)));
   break;
  case 136:
   if (optlen < 4) {
    ND_PRINT((ndo, " ?)"));
    break;
   }
   tp = (const u_char *)(dh6o + 1);
   ND_PRINT((ndo, " %d ", EXTRACT_32BITS(tp)));



   for (i = 4; i < optlen && i < 14; i++)
    ND_PRINT((ndo, "%02x", tp[i]));
   ND_PRINT((ndo, "...)"));
   break;
  case 154:
   if (optlen < 17) {
    ND_PRINT((ndo, " ?)"));
    break;
   }
   tp = (const u_char *)(dh6o + 1);
   switch (*tp) {
   case 1:
    ND_PRINT((ndo, " by-address"));
    break;
   case 2:
    ND_PRINT((ndo, " by-clientID"));
    break;
   default:
    ND_PRINT((ndo, " type_%d", (int)*tp));
    break;
   }
   ND_PRINT((ndo, " %s", ip6addr_string(ndo, &tp[1])));
   if (optlen > 17) {

    dhcp6opt_print(ndo, tp + 17, tp + optlen);
   }
   ND_PRINT((ndo, ")"));
   break;
  case 168:
   tp = (const u_char *)(dh6o + 1);
   if (optlen > 0) {

    dhcp6opt_print(ndo, tp, tp + optlen);
   }
   ND_PRINT((ndo, ")"));
   break;
  case 153:
   if (optlen < 16) {
    ND_PRINT((ndo, " ?)"));
    break;
   }
   tp = (const u_char *)(dh6o + 1);
   ND_PRINT((ndo, " %s ", ip6addr_string(ndo, &tp[0])));



   for (i = 16; i < optlen && i < 26; i++)
    ND_PRINT((ndo, "%02x", tp[i]));
   ND_PRINT((ndo, "...)"));
   break;
  case 147:
   if (optlen < 4) {
    ND_PRINT((ndo, " ?)"));
    break;
   }
   tp = (const u_char *)(dh6o + 1);
   while (tp < cp + sizeof(*dh6o) + optlen - 4) {
    subopt_code = EXTRACT_16BITS(tp);
    tp += 2;
    subopt_len = EXTRACT_16BITS(tp);
    tp += 2;
    if (tp + subopt_len > cp + sizeof(*dh6o) + optlen)
     goto trunc;
    ND_PRINT((ndo, " subopt:%d", subopt_code));
    switch (subopt_code) {
    case 145:
    case 146:
     if (subopt_len != 16) {
      ND_PRINT((ndo, " ?"));
      break;
     }
     ND_PRINT((ndo, " %s", ip6addr_string(ndo, &tp[0])));
     break;
    case 144:
     ND_PRINT((ndo, " "));
     if (ns_nprint(ndo, tp, tp + subopt_len) == ((void*)0))
      goto trunc;
     break;
    default:
     ND_PRINT((ndo, " ?"));
     break;
    }
    tp += subopt_len;
   }
   ND_PRINT((ndo, ")"));
   break;
  case 178:
   if (optlen < 3) {
    ND_PRINT((ndo, " ?)"));
    break;
   }
   tp = (const u_char *)(dh6o + 1);
   remain_len = optlen;
   ND_PRINT((ndo, " "));

   while (remain_len && *tp) {
    label_len = *tp++;
    if (label_len < remain_len - 1) {
     (void)fn_printn(ndo, tp, label_len, ((void*)0));
     tp += label_len;
     remain_len -= (label_len + 1);
     if(*tp) ND_PRINT((ndo, "."));
    } else {
     ND_PRINT((ndo, " ?"));
     break;
    }
   }
   ND_PRINT((ndo, ")"));
   break;
  case 151:
  case 150:
  case 152:
          if (optlen < 5) {
    ND_PRINT((ndo, " ?)"));
    break;
   }
   tp = (const u_char *)(dh6o + 1);
   ND_PRINT((ndo, "="));
   (void)fn_printn(ndo, tp, (u_int)optlen, ((void*)0));
   ND_PRINT((ndo, ")"));
   break;

  default:
   ND_PRINT((ndo, ")"));
   break;
  }

  cp += sizeof(*dh6o) + optlen;
 }
 return;

trunc:
 ND_PRINT((ndo, "[|dhcp6ext]"));
}
