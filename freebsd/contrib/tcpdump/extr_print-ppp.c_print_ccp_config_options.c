
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_5__ {int ndo_vflag; } ;
typedef TYPE_1__ netdissect_options ;
 int ND_PRINT (TYPE_1__*) ;
 int ND_TCHECK (int const) ;
 int ND_TCHECK2 (int const,int) ;
 int ccpconfopts_values ;
 int print_unknown_data (TYPE_1__*,int const*,char*,int) ;
 int tok2str (int ,char*,int) ;

__attribute__((used)) static int
print_ccp_config_options(netdissect_options *ndo,
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
  ND_PRINT((ndo, "\n\t  %s Option (0x%02x), length %u (length bogus, should be >= 2)",
            tok2str(ccpconfopts_values, "Unknown", opt),
            opt,
            len));
  return 0;
 }

 ND_PRINT((ndo, "\n\t  %s Option (0x%02x), length %u",
           tok2str(ccpconfopts_values, "Unknown", opt),
           opt,
           len));

 switch (opt) {
 case 142:
  if (len < 3) {
   ND_PRINT((ndo, " (length bogus, should be >= 3)"));
   return len;
  }
  ND_TCHECK(p[2]);
  ND_PRINT((ndo, ": Version: %u, Dictionary Bits: %u",
   p[2] >> 5, p[2] & 0x1f));
  break;
 case 135:
  if (len < 4) {
   ND_PRINT((ndo, " (length bogus, should be >= 4)"));
   return len;
  }
  ND_TCHECK(p[3]);
  ND_PRINT((ndo, ": Features: %u, PxP: %s, History: %u, #CTX-ID: %u",
    (p[2] & 0xc0) >> 6,
    (p[2] & 0x20) ? "Enabled" : "Disabled",
    p[2] & 0x1f, p[3]));
  break;
 case 140:
  if (len < 4) {
   ND_PRINT((ndo, " (length bogus, should be >= 4)"));
   return len;
  }
  ND_TCHECK(p[3]);
  ND_PRINT((ndo, ": Window: %uK, Method: %s (0x%x), MBZ: %u, CHK: %u",
   (p[2] & 0xf0) >> 4,
   ((p[2] & 0x0f) == 8) ? "zlib" : "unknown",
   p[2] & 0x0f, (p[3] & 0xfc) >> 2, p[3] & 0x03));
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
 ND_PRINT((ndo, "[|ccp]"));
 return 0;
}
