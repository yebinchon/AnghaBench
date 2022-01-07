
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int netdissect_options ;


 int EXTRACT_16BITS (int const*) ;
 int ND_PRINT (int *) ;

__attribute__((used)) static void
pptp_call_id_print(netdissect_options *ndo,
                   const uint16_t *call_id)
{
 ND_PRINT((ndo, " CALL_ID(%u)", EXTRACT_16BITS(call_id)));
}
