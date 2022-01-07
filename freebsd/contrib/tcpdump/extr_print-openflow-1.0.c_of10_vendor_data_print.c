
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
typedef int u_char ;
typedef int netdissect_options ;


 int EXTRACT_32BITS (int const*) ;
 int ND_PRINT (int *) ;
 int ND_TCHECK2 (int const,int const) ;
 int istr ;
 int const* of10_data_print (int *,int const*,int const*,int const) ;
 int of_vendor_name (int ) ;
 int tstr ;

__attribute__((used)) static const u_char *
of10_vendor_data_print(netdissect_options *ndo,
                       const u_char *cp, const u_char *ep, const u_int len)
{
 uint32_t vendor;

 if (len < 4)
  goto invalid;

 ND_TCHECK2(*cp, 4);
 vendor = EXTRACT_32BITS(cp);
 cp += 4;
 ND_PRINT((ndo, ", vendor 0x%08x (%s)", vendor, of_vendor_name(vendor)));

 return of10_data_print(ndo, cp, ep, len - 4);

invalid:
 ND_PRINT((ndo, "%s", istr));
 ND_TCHECK2(*cp, len);
 return cp + len;
trunc:
 ND_PRINT((ndo, "%s", tstr));
 return ep;
}
