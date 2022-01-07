
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int netdissect_options ;


 int EXTRACT_16BITS (int const*) ;
 int ND_PRINT (int *) ;

__attribute__((used)) static void
pptp_cause_code_print(netdissect_options *ndo,
                      const uint16_t *cause_code)
{
 ND_PRINT((ndo, " CAUSE_CODE(%u)", EXTRACT_16BITS(cause_code)));
}
