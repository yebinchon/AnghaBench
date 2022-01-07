
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int netdissect_options ;


 int EXTRACT_32BITS (int const*) ;
 int ND_PRINT (int *) ;
 int PPTP_BEARER_CAP_ANALOG_MASK ;
 int PPTP_BEARER_CAP_DIGITAL_MASK ;

__attribute__((used)) static void
pptp_bearer_cap_print(netdissect_options *ndo,
                      const uint32_t *bearer_cap)
{
 ND_PRINT((ndo, " BEARER_CAP(%s%s)",
           EXTRACT_32BITS(bearer_cap) & PPTP_BEARER_CAP_DIGITAL_MASK ? "D" : "",
           EXTRACT_32BITS(bearer_cap) & PPTP_BEARER_CAP_ANALOG_MASK ? "A" : ""));
}
