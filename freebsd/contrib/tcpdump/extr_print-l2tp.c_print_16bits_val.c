
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int netdissect_options ;


 int EXTRACT_16BITS (int const*) ;
 int ND_PRINT (int *) ;

__attribute__((used)) static void
print_16bits_val(netdissect_options *ndo, const uint16_t *dat)
{
 ND_PRINT((ndo, "%u", EXTRACT_16BITS(dat)));
}
