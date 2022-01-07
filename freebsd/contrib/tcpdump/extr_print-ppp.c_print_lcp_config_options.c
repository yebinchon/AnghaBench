
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_7__ {int ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;


 int const EXTRACT_16BITS (int const*) ;
 int const EXTRACT_24BITS (int const*) ;
 int EXTRACT_32BITS (int const*) ;
 int LCPOPT_MAX ;
 int LCPOPT_MIN ;
 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK (int const) ;
 int ND_TCHECK2 (int const,int) ;
 int ND_TCHECK_16BITS (int const*) ;
 int ND_TCHECK_24BITS (int const*) ;
 int ND_TCHECK_32BITS (int const*) ;


 int const PPP_LQM ;



 int authalg_values ;
 int etheraddr_string (TYPE_1__*,int const*) ;
 int i ;
 int ipaddr_string (TYPE_1__*,int const*) ;
 int * lcpconfopts ;
 int oui_values ;
 int ppp_callback_values ;
 int ppptype2str ;
 int print_unknown_data (TYPE_1__*,int const*,char*,int) ;
 int tok2str (int ,char*,int const) ;

__attribute__((used)) static int
print_lcp_config_options(netdissect_options *ndo,
                         const u_char *p, int length)
{
 int len, opt;

 if (length < 2)
  return 0;
 ND_TCHECK2(*p, 2);
 len = p[1];
 opt = p[0];
 if (length < len)
  return 0;
 if (len < 2) {
  if ((opt >= LCPOPT_MIN) && (opt <= LCPOPT_MAX))
   ND_PRINT((ndo, "\n\t  %s Option (0x%02x), length %u (length bogus, should be >= 2)",
             lcpconfopts[opt], opt, len));
  else
   ND_PRINT((ndo, "\n\tunknown LCP option 0x%02x", opt));
  return 0;
 }
 if ((opt >= LCPOPT_MIN) && (opt <= LCPOPT_MAX))
  ND_PRINT((ndo, "\n\t  %s Option (0x%02x), length %u", lcpconfopts[opt], opt, len));
 else {
  ND_PRINT((ndo, "\n\tunknown LCP option 0x%02x", opt));
  return len;
 }

 switch (opt) {
 case 139:
  if (len < 6) {
   ND_PRINT((ndo, " (length bogus, should be >= 6)"));
   return len;
  }
  ND_TCHECK_24BITS(p + 2);
  ND_PRINT((ndo, ": Vendor: %s (%u)",
   tok2str(oui_values,"Unknown",EXTRACT_24BITS(p+2)),
   EXTRACT_24BITS(p + 2)));
  break;
 case 148:
  if (len != 4) {
   ND_PRINT((ndo, " (length bogus, should be = 4)"));
   return len;
  }
  ND_TCHECK_16BITS(p + 2);
  ND_PRINT((ndo, ": %u", EXTRACT_16BITS(p + 2)));
  break;
 case 169:
  if (len != 6) {
   ND_PRINT((ndo, " (length bogus, should be = 6)"));
   return len;
  }
  ND_TCHECK_32BITS(p + 2);
  ND_PRINT((ndo, ": 0x%08x", EXTRACT_32BITS(p + 2)));
  break;
 case 167:
  if (len < 4) {
   ND_PRINT((ndo, " (length bogus, should be >= 4)"));
   return len;
  }
  ND_TCHECK_16BITS(p + 2);
  ND_PRINT((ndo, ": %s", tok2str(ppptype2str, "Unknown Auth Proto (0x04x)", EXTRACT_16BITS(p + 2))));

  switch (EXTRACT_16BITS(p+2)) {
  case 132:
   ND_TCHECK(p[4]);
   ND_PRINT((ndo, ", %s", tok2str(authalg_values, "Unknown Auth Alg %u", p[4])));
   break;
  case 130:
  case 131:
  case 129:
  case 128:
                        break;
  default:
   print_unknown_data(ndo, p, "\n\t", len);
  }
  break;
 case 142:
  if (len < 4) {
   ND_PRINT((ndo, " (length bogus, should be >= 4)"));
   return 0;
  }
  ND_TCHECK_16BITS(p+2);
  if (EXTRACT_16BITS(p+2) == PPP_LQM)
   ND_PRINT((ndo, ": LQR"));
  else
   ND_PRINT((ndo, ": unknown"));
  break;
 case 150:
  if (len != 6) {
   ND_PRINT((ndo, " (length bogus, should be = 6)"));
   return 0;
  }
  ND_TCHECK_32BITS(p + 2);
  ND_PRINT((ndo, ": 0x%08x", EXTRACT_32BITS(p + 2)));
  break;
 case 145:
  break;
 case 168:
  break;
 case 155:
  if (len != 4) {
   ND_PRINT((ndo, " (length bogus, should be = 4)"));
   return 0;
  }
  ND_TCHECK_16BITS(p + 2);
  ND_PRINT((ndo, ": 0x%04x", EXTRACT_16BITS(p + 2)));
  break;
 case 166:
  if (len < 3) {
   ND_PRINT((ndo, " (length bogus, should be >= 3)"));
   return 0;
  }
  ND_PRINT((ndo, ": "));
  ND_TCHECK(p[2]);
  ND_PRINT((ndo, ": Callback Operation %s (%u)",
                       tok2str(ppp_callback_values, "Unknown", p[2]),
                       p[2]));
  break;
 case 152:
  if (len != 4) {
   ND_PRINT((ndo, " (length bogus, should be = 4)"));
   return 0;
  }
  ND_TCHECK_16BITS(p + 2);
  ND_PRINT((ndo, ": %u", EXTRACT_16BITS(p + 2)));
  break;
 case 154:
  if (len < 3) {
   ND_PRINT((ndo, " (length bogus, should be >= 3)"));
   return 0;
  }
  ND_TCHECK(p[2]);
  switch (p[2]) {
  case 134:
   ND_PRINT((ndo, ": Null"));
   break;
  case 137:
   ND_PRINT((ndo, ": Local"));
   break;
  case 138:
   if (len != 7) {
    ND_PRINT((ndo, " (length bogus, should be = 7)"));
    return 0;
   }
   ND_TCHECK2(*(p + 3), 4);
   ND_PRINT((ndo, ": IPv4 %s", ipaddr_string(ndo, p + 3)));
   break;
  case 136:
   if (len != 9) {
    ND_PRINT((ndo, " (length bogus, should be = 9)"));
    return 0;
   }
   ND_TCHECK2(*(p + 3), 6);
   ND_PRINT((ndo, ": MAC %s", etheraddr_string(ndo, p + 3)));
   break;
  case 135:
   ND_PRINT((ndo, ": Magic-Num-Block"));
   break;
  case 133:
   ND_PRINT((ndo, ": PSNDN"));
   break;
  default:
   ND_PRINT((ndo, ": Unknown class %u", p[2]));
   break;
  }
  break;
 default:




  if (ndo->ndo_vflag < 2)
   print_unknown_data(ndo, &p[2], "\n\t    ", len - 2);
  break;
 }

 if (ndo->ndo_vflag > 1)
  print_unknown_data(ndo, &p[2], "\n\t    ", len - 2);

 return len;

trunc:
 ND_PRINT((ndo, "[|lcp]"));
 return 0;
}
