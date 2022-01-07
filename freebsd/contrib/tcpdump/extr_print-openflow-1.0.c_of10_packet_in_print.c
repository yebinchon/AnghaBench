
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int u_char ;
typedef int netdissect_options ;


 int const EXTRACT_16BITS (int const*) ;
 int const EXTRACT_32BITS (int const*) ;
 int ND_PRINT (int *) ;
 int ND_TCHECK2 (int const,int) ;
 int OF_PACKET_IN_LEN ;
 int bufferid_str ;
 int const* of10_packet_data_print (int *,int const*,int const*,int const) ;
 int ofpp_str ;
 int ofpr_str ;
 int tok2str (int ,char*,int const) ;
 int tstr ;

__attribute__((used)) static const u_char *
of10_packet_in_print(netdissect_options *ndo,
                     const u_char *cp, const u_char *ep, const u_int len)
{

 ND_TCHECK2(*cp, 4);
 ND_PRINT((ndo, "\n\t buffer_id %s", tok2str(bufferid_str, "0x%08x", EXTRACT_32BITS(cp))));
 cp += 4;

 ND_TCHECK2(*cp, 2);
 ND_PRINT((ndo, ", total_len %u", EXTRACT_16BITS(cp)));
 cp += 2;

 ND_TCHECK2(*cp, 2);
 ND_PRINT((ndo, ", in_port %s", tok2str(ofpp_str, "%u", EXTRACT_16BITS(cp))));
 cp += 2;

 ND_TCHECK2(*cp, 1);
 ND_PRINT((ndo, ", reason %s", tok2str(ofpr_str, "invalid (0x%02x)", *cp)));
 cp += 1;

 ND_TCHECK2(*cp, 1);
 cp += 1;


 return of10_packet_data_print(ndo, cp, ep, len - (OF_PACKET_IN_LEN - 2));

trunc:
 ND_PRINT((ndo, "%s", tstr));
 return ep;
}
