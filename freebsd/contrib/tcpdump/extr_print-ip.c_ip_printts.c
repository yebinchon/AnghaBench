
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
typedef int netdissect_options ;


 int EXTRACT_32BITS (int const*) ;


 int ND_PRINT (int *) ;
 int ND_TCHECK (int const) ;
 int ND_TCHECK2 (int const,int) ;
 char* ipaddr_string (int *,int const*) ;

__attribute__((used)) static int
ip_printts(netdissect_options *ndo,
           register const u_char *cp, u_int length)
{
 register u_int ptr;
 register u_int len;
 int hoplen;
 const char *type;

 if (length < 4) {
  ND_PRINT((ndo, "[bad length %u]", length));
  return (0);
 }
 ND_PRINT((ndo, " TS{"));
 hoplen = ((cp[3]&0xF) != 128) ? 8 : 4;
 if ((length - 4) & (hoplen-1))
  ND_PRINT((ndo, "[bad length %u]", length));
 ND_TCHECK(cp[2]);
 ptr = cp[2] - 1;
 len = 0;
 if (ptr < 4 || ((ptr - 4) & (hoplen-1)) || ptr > length + 1)
  ND_PRINT((ndo, "[bad ptr %u]", cp[2]));
 ND_TCHECK(cp[3]);
 switch (cp[3]&0xF) {
 case 128:
  ND_PRINT((ndo, "TSONLY"));
  break;
 case 129:
  ND_PRINT((ndo, "TS+ADDR"));
  break;






 case 2:
  ND_PRINT((ndo, "PRESPEC2.0"));
  break;
 case 3:
  ND_PRINT((ndo, "PRESPEC"));
  break;
 default:
  ND_PRINT((ndo, "[bad ts type %d]", cp[3]&0xF));
  goto done;
 }

 type = " ";
 for (len = 4; len < length; len += hoplen) {
  if (ptr == len)
   type = " ^ ";
  ND_TCHECK2(cp[len], hoplen);
  ND_PRINT((ndo, "%s%d@%s", type, EXTRACT_32BITS(&cp[len+hoplen-4]),
         hoplen!=8 ? "" : ipaddr_string(ndo, &cp[len])));
  type = " ";
 }

done:
 ND_PRINT((ndo, "%s", ptr == len ? " ^ " : ""));

 if (cp[3]>>4)
  ND_PRINT((ndo, " [%d hops not recorded]} ", cp[3]>>4));
 else
  ND_PRINT((ndo, "}"));
 return (0);

trunc:
 return (-1);
}
