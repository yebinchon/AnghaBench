
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int u_char ;
typedef int netdissect_options ;


 int EXTRACT_16BITS (int const*) ;
 int EXTRACT_32BITS (int const*) ;
 int ND_PRINT (int *) ;
 int ND_TCHECK2 (int const,int) ;
 int OF_HEADER_LEN ;

 int istr ;
 int const* of10_header_body_print (int *,int const*,int const*,int,int,int ) ;
 int of_header_print (int *,int,int,int,int ) ;
 int tstr ;

__attribute__((used)) static const u_char *
of_header_body_print(netdissect_options *ndo, const u_char *cp, const u_char *ep)
{
 uint8_t version, type;
 uint16_t length;
 uint32_t xid;

 if (ep < cp + OF_HEADER_LEN)
  goto invalid;

 ND_TCHECK2(*cp, 1);
 version = *cp;
 cp += 1;

 ND_TCHECK2(*cp, 1);
 type = *cp;
 cp += 1;

 ND_TCHECK2(*cp, 2);
 length = EXTRACT_16BITS(cp);
 cp += 2;

 ND_TCHECK2(*cp, 4);
 xid = EXTRACT_32BITS(cp);
 cp += 4;





 if (length < OF_HEADER_LEN) {
  of_header_print(ndo, version, type, length, xid);
  goto invalid;
 }


 switch (version) {
 case 128:
  return of10_header_body_print(ndo, cp, ep, type, length, xid);
 default:
  of_header_print(ndo, version, type, length, xid);
  ND_TCHECK2(*cp, length - OF_HEADER_LEN);
  return cp + length - OF_HEADER_LEN;
 }

invalid:
 ND_PRINT((ndo, "%s", istr));
 ND_TCHECK2(*cp, ep - cp);
 return ep;
trunc:
 ND_PRINT((ndo, "%s", tstr));
 return ep;
}
