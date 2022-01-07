
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int netdissect_options ;


 int EXTRACT_16BITS (int const*) ;

 unsigned int const IP6MOPT_ALTCOA_MINLEN ;

 unsigned int const IP6MOPT_AUTH_MINLEN ;
 unsigned int const IP6MOPT_MINLEN ;

 unsigned int const IP6MOPT_NONCEID_MINLEN ;



 unsigned int const IP6MOPT_REFRESH_MINLEN ;
 int ND_PRINT (int *) ;
 int ND_TCHECK (int const) ;
 int ND_TCHECK_128BITS (int const*) ;
 int ND_TCHECK_16BITS (int const*) ;
 int ip6addr_string (int *,int const*) ;

__attribute__((used)) static int
mobility_opt_print(netdissect_options *ndo,
                   const u_char *bp, const unsigned len)
{
 unsigned i, optlen;

 for (i = 0; i < len; i += optlen) {
  ND_TCHECK(bp[i]);
  if (bp[i] == 130)
   optlen = 1;
  else {
   if (i + 1 < len) {
    ND_TCHECK(bp[i + 1]);
    optlen = bp[i + 1] + 2;
   }
   else
    goto trunc;
  }
  if (i + optlen > len)
   goto trunc;
  ND_TCHECK(bp[i + optlen]);

  switch (bp[i]) {
  case 130:
   ND_PRINT((ndo, "(pad1)"));
   break;
  case 129:
   if (len - i < IP6MOPT_MINLEN) {
    ND_PRINT((ndo, "(padn: trunc)"));
    goto trunc;
   }
   ND_PRINT((ndo, "(padn)"));
   break;
  case 128:
   if (len - i < IP6MOPT_REFRESH_MINLEN) {
    ND_PRINT((ndo, "(refresh: trunc)"));
    goto trunc;
   }

   ND_TCHECK_16BITS(&bp[i+2]);
   ND_PRINT((ndo, "(refresh: %u)",
    EXTRACT_16BITS(&bp[i+2]) << 2));
   break;
  case 133:
   if (len - i < IP6MOPT_ALTCOA_MINLEN) {
    ND_PRINT((ndo, "(altcoa: trunc)"));
    goto trunc;
   }
   ND_TCHECK_128BITS(&bp[i+2]);
   ND_PRINT((ndo, "(alt-CoA: %s)", ip6addr_string(ndo, &bp[i+2])));
   break;
  case 131:
   if (len - i < IP6MOPT_NONCEID_MINLEN) {
    ND_PRINT((ndo, "(ni: trunc)"));
    goto trunc;
   }
   ND_TCHECK_16BITS(&bp[i+2]);
   ND_TCHECK_16BITS(&bp[i+4]);
   ND_PRINT((ndo, "(ni: ho=0x%04x co=0x%04x)",
    EXTRACT_16BITS(&bp[i+2]),
    EXTRACT_16BITS(&bp[i+4])));
   break;
  case 132:
   if (len - i < IP6MOPT_AUTH_MINLEN) {
    ND_PRINT((ndo, "(auth: trunc)"));
    goto trunc;
   }
   ND_PRINT((ndo, "(auth)"));
   break;
  default:
   if (len - i < IP6MOPT_MINLEN) {
    ND_PRINT((ndo, "(sopt_type %u: trunc)", bp[i]));
    goto trunc;
   }
   ND_PRINT((ndo, "(type-0x%02x: len=%u)", bp[i], bp[i + 1]));
   break;
  }
 }
 return 0;

trunc:
 return 1;
}
