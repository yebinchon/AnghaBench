
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int netdissect_options ;


 int EXTRACT_32BITS (int const*) ;
 int ND_PRINT (int *) ;
 int pptp_btype_str ;
 int tok2str (int ,char*,int ) ;

__attribute__((used)) static void
pptp_bearer_type_print(netdissect_options *ndo,
                       const uint32_t *bearer_type)
{
 ND_PRINT((ndo, " BEARER_TYPE(%s)",
           tok2str(pptp_btype_str, "?", EXTRACT_32BITS(bearer_type))));
}
