
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int netdissect_options ;


 int IP6OPT_MINLEN ;


 int ND_PRINT (int *) ;

__attribute__((used)) static void
ip6_sopt_print(netdissect_options *ndo, const u_char *bp, int len)
{
    int i;
    int optlen;

    for (i = 0; i < len; i += optlen) {
 if (bp[i] == 129)
     optlen = 1;
 else {
     if (i + 1 < len)
  optlen = bp[i + 1] + 2;
     else
  goto trunc;
 }
 if (i + optlen > len)
     goto trunc;

 switch (bp[i]) {
 case 129:
            ND_PRINT((ndo, ", pad1"));
     break;
 case 128:
     if (len - i < IP6OPT_MINLEN) {
  ND_PRINT((ndo, ", padn: trunc"));
  goto trunc;
     }
            ND_PRINT((ndo, ", padn"));
     break;
 default:
     if (len - i < IP6OPT_MINLEN) {
  ND_PRINT((ndo, ", sopt_type %d: trunc)", bp[i]));
  goto trunc;
     }
     ND_PRINT((ndo, ", sopt_type 0x%02x: len=%d", bp[i], bp[i + 1]));
     break;
 }
    }
    return;

trunc:
    ND_PRINT((ndo, "[trunc] "));
}
