
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
typedef int netdissect_options ;


 int EXTRACT_16BITS (int const*) ;
 int ND_PRINT (int *) ;
 int ND_TCHECK (int const) ;
 int ND_TCHECK2 (int const,int) ;
 int ip_option_values ;
 int ip_printroute (int *,int const*,int) ;
 int ip_printts (int *,int const*,int) ;
 int tok2str (int ,char*,int) ;
 int tstr ;

__attribute__((used)) static void
ip_optprint(netdissect_options *ndo,
            register const u_char *cp, u_int length)
{
 register u_int option_len;
 const char *sep = "";

 for (; length > 0; cp += option_len, length -= option_len) {
  u_int option_code;

  ND_PRINT((ndo, "%s", sep));
  sep = ",";

  ND_TCHECK(*cp);
  option_code = *cp;

  ND_PRINT((ndo, "%s",
            tok2str(ip_option_values,"unknown %u",option_code)));

  if (option_code == 133 ||
                    option_code == 135)
   option_len = 1;

  else {
   ND_TCHECK(cp[1]);
   option_len = cp[1];
   if (option_len < 2) {
    ND_PRINT((ndo, " [bad length %u]", option_len));
    return;
   }
  }

  if (option_len > length) {
   ND_PRINT((ndo, " [bad length %u]", option_len));
   return;
  }

  ND_TCHECK2(*cp, option_len);

  switch (option_code) {
  case 135:
   return;

  case 128:
   if (ip_printts(ndo, cp, option_len) == -1)
    goto trunc;
   break;

  case 131:
  case 129:
  case 134:
   if (ip_printroute(ndo, cp, option_len) == -1)
    goto trunc;
   break;

  case 132:
   if (option_len < 4) {
    ND_PRINT((ndo, " [bad length %u]", option_len));
    break;
   }
   ND_TCHECK(cp[3]);
   if (EXTRACT_16BITS(&cp[2]) != 0)
    ND_PRINT((ndo, " value %u", EXTRACT_16BITS(&cp[2])));
   break;

  case 133:
  case 130:
  default:
   break;
  }
 }
 return;

trunc:
 ND_PRINT((ndo, "%s", tstr));
}
