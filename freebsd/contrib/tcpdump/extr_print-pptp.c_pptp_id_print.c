
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int netdissect_options ;


 int EXTRACT_32BITS (int const*) ;
 int ND_PRINT (int *) ;

__attribute__((used)) static void
pptp_id_print(netdissect_options *ndo,
              const uint32_t *id)
{
 ND_PRINT((ndo, " ID(%u)", EXTRACT_32BITS(id)));
}
