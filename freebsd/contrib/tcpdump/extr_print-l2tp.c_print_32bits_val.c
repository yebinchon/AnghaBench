
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_long ;
typedef int netdissect_options ;


 scalar_t__ EXTRACT_32BITS (int const*) ;
 int ND_PRINT (int *) ;

__attribute__((used)) static void
print_32bits_val(netdissect_options *ndo, const uint32_t *dat)
{
 ND_PRINT((ndo, "%lu", (u_long)EXTRACT_32BITS(dat)));
}
