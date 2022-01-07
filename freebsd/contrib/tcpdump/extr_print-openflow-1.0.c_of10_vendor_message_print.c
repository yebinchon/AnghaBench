
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int u_int ;
typedef int u_char ;
typedef int netdissect_options ;


 scalar_t__ EXTRACT_32BITS (int const*) ;
 int ND_PRINT (int *) ;
 int ND_TCHECK2 (int const,int const) ;
 scalar_t__ OUI_BSN ;
 int istr ;
 int const* of10_bsn_message_print (int *,int const*,int const*,int) ;
 int const* of10_data_print (int *,int const*,int const*,int) ;
 int of_vendor_name (scalar_t__) ;
 int tstr ;

__attribute__((used)) static const u_char *
of10_vendor_message_print(netdissect_options *ndo,
                          const u_char *cp, const u_char *ep, const u_int len)
{
 uint32_t vendor;
 const u_char *(*decoder)(netdissect_options *, const u_char *, const u_char *, u_int);

 if (len < 4)
  goto invalid;

 ND_TCHECK2(*cp, 4);
 vendor = EXTRACT_32BITS(cp);
 cp += 4;
 ND_PRINT((ndo, ", vendor 0x%08x (%s)", vendor, of_vendor_name(vendor)));

 decoder =
  vendor == OUI_BSN ? of10_bsn_message_print :
  of10_data_print;
 return decoder(ndo, cp, ep, len - 4);

invalid:
 ND_PRINT((ndo, "%s", istr));
 ND_TCHECK2(*cp, len);
 return cp + len;
trunc:
 ND_PRINT((ndo, "%s", tstr));
 return ep;
}
